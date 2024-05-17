import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:toefl_app/pages/test_grammar/finish.dart';
import 'package:toefl_app/pages/test_listening/exit_card.dart';

class listening extends StatefulWidget {
  const listening({super.key});

  @override
  State<listening> createState() => _listeningState();
}

class _listeningState extends State<listening> {
  final AudioPlayer player = AudioPlayer();
  bool isDraggingSlider = false;
  Duration currentPosition = Duration.zero;
  Duration totalDuration = Duration.zero;
  double _currentSliderValue = 0.0;
  bool _isPlaying = false;
  int _countdownTime = 602;
  Timer? _timer;
  int numberOfPlays = 0;
  bool _isFirstAudioPlaying = false;
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _startCountdownTimer();
    player.onDurationChanged.listen((Duration d) {
      setState(() => totalDuration = d);
    });
    player.onPositionChanged.listen((Duration p) {
      if (!isDraggingSlider) {
        setState(() => currentPosition = p);
      }
    });
    player.onDurationChanged.listen((event) {
      setState(() {
        _isPlaying = false;
        currentPosition = Duration.zero;
      });
    });
  }

  void _startCountdownTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_countdownTime > 0) {
        setState(() {
          _countdownTime--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  void _onOptionSelected(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
    setState(() => _isPlaying = true);
  }

  @override
  void dispose() {
    _timer?.cancel();
    player.dispose();
    super.dispose();
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExitCard()),
                  );
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 27.0),
                child: Image.asset(
                  'images/pens_remBG.png',
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(
                  right: screenWidth * 0.05,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 76, // Fixed width
                    height: 30, // Fixed height
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 9,
                          top: 5,
                          child: SizedBox(
                            width: 58,
                            height: 20,
                            child: Text(
                              _formatTime(_countdownTime),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15, // Fixed font size
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.play_arrow),
                          onPressed: () async {
                            if (!_isFirstAudioPlaying && numberOfPlays < 2) {
                              setState(() {
                                _isFirstAudioPlaying =
                                    true; // Menandai bahwa pemutaran pertama telah dimulai
                                numberOfPlays++; // Menambah jumlah putaran
                              });

                              // Memulai pemutaran audio pertama
                              await playAudioFromUrl(
                                'https://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3',
                              );

                              // Ketika audio pertama selesai diputar, atur _isFirstAudioPlaying menjadi false
                              setState(() {
                                _isFirstAudioPlaying = false;
                              });
                            }
                          },
                        ),
                        Expanded(
                          child: Slider(
                            value: isDraggingSlider
                                ? currentPosition.inSeconds.toDouble()
                                : totalDuration.inSeconds > 0
                                    ? currentPosition.inSeconds.toDouble()
                                    : 0.0,
                            max: totalDuration.inSeconds.toDouble(),
                            onChanged: (double value) async {
                              setState(() {
                                isDraggingSlider = true;
                                currentPosition =
                                    Duration(seconds: value.toInt());
                              });
                            },
                            onChangeEnd: (double value) async {
                              final position = Duration(seconds: value.toInt());
                              await player.seek(position);
                              setState(() {
                                isDraggingSlider = false;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: Text(
                            formatDuration(currentPosition),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Listen: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.05,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '${2 - numberOfPlays} plays left', // Display remaining plays
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.05,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.02,
                  screenHeight * 0.02,
                  screenWidth * 0.02,
                  screenHeight * 0.02,
                ),
                margin: EdgeInsets.all(screenWidth * 0.02),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(4, 0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.02,
                          screenHeight * 0.02,
                          screenWidth * 0.02,
                          0,
                        ),
                        child: Text(
                          'Question 1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.02,
                          0,
                          screenWidth * 0.02,
                          screenHeight * 0.02,
                        ),
                        child: Text(
                          'What does the man say about Sterling Watson?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0),
                          child: GestureDetector(
                            onTap: () => _onOptionSelected('A'),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RawMaterialButton(
                                  onPressed: () => _onOptionSelected('A'),
                                  fillColor: _selectedOption == 'A'
                                      ? Colors.blue
                                      : Colors.transparent,
                                  shape: CircleBorder(),
                                  elevation: 0,
                                  child: Text(
                                    'A',
                                    style: TextStyle(
                                      color: _selectedOption == 'A'
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: 2), // Spasi antara tombol dan teks
                                Expanded(
                                  child: Text(
                                    'He is required to read one of his books but does not like his writing.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestureDetector(
                            onTap: () => _onOptionSelected('B'),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RawMaterialButton(
                                  onPressed: () => _onOptionSelected('B'),
                                  fillColor: _selectedOption == 'B'
                                      ? Colors.blue
                                      : Colors.transparent,
                                  shape: CircleBorder(),
                                  elevation: 0,
                                  child: Text(
                                    'B',
                                    style: TextStyle(
                                      color: _selectedOption == 'B'
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: 2), // Spasi antara tombol dan teks
                                Expanded(
                                  child: Text(
                                    'He has never read any of his works previously.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestureDetector(
                            onTap: () => _onOptionSelected('C'),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RawMaterialButton(
                                  onPressed: () => _onOptionSelected('C'),
                                  fillColor: _selectedOption == 'C'
                                      ? Colors.blue
                                      : Colors.transparent,
                                  shape: CircleBorder(),
                                  elevation: 0,
                                  child: Text(
                                    'C',
                                    style: TextStyle(
                                      color: _selectedOption == 'C'
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: 2), // Spasi antara tombol dan teks
                                Expanded(
                                  child: Text(
                                    'He appreciates his writing style.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: GestureDetector(
                            onTap: () => _onOptionSelected('D'),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RawMaterialButton(
                                  onPressed: () => _onOptionSelected('D'),
                                  fillColor: _selectedOption == 'D'
                                      ? Colors.blue
                                      : Colors.transparent,
                                  shape: CircleBorder(),
                                  elevation: 0,
                                  child: Text(
                                    'D',
                                    style: TextStyle(
                                      color: _selectedOption == 'D'
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: 2), // Spasi antara tombol dan teks
                                Expanded(
                                  child: Text(
                                    'He learned about his books from a computer.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        height: screenHeight * 0.1,
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.2),
                  child: Text(
                    'Test Listening Page',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.05, // Adjust font size
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.08),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FinishPage()), // Navigate to FinishPage
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}