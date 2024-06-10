import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toefl_app/model/learning_listenning.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Contohsoal1 extends StatefulWidget {
  const Contohsoal1({Key? key}) : super(key: key);

  @override
  State<Contohsoal1> createState() => _ShortConversationPagesState();
}

class _ShortConversationPagesState extends State<Contohsoal1> {
  final player = AudioPlayer();
  bool isPlaying = false;
  bool isDraggingSlider = false;
  Duration currentPosition = Duration.zero;
  Duration totalDuration = Duration.zero;

  List<Payload> _payloads = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onPositionChanged.listen((position) {
      if (!isDraggingSlider) {
        setState(() {
          currentPosition = position;
        });
      }
    });

    player.onDurationChanged.listen((duration) {
      setState(() {
        totalDuration = duration;
      });
    });
  }

  Future<void> fetchData() async {
    const url = 'https://test-toefl.kerissumenep.com/api/MateriListening';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        if (data.containsKey('payload')) {
          final List<dynamic> payloads = data['payload'];
          setState(() {
            _payloads = Payload.fromJsonList(payloads)
                .where((payload) => payload.id == 8)
                .toList();
            _isLoading = false;
          });
        } else {
          throw Exception('Payload data not found');
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error fetching data: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
    player.onPositionChanged.listen((Duration position) {
      setState(() {
        currentPosition = position;
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }

  @override
  Widget build(BuildContext context) {
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
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 36.0),
            child: Text(
              'contoh soal 1',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 15.0),
            child: Text(
              'Contoh Soal :',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 22.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    onPressed: () async {
                      if (isPlaying) {
                        await player.pause();
                      } else {
                        await playAudioFromUrl(
                            'https://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3');
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
                        });
                        final position = Duration(seconds: value.toInt());
                        await player.seek(position);
                      },
                      onChangeEnd: (double value) {
                        setState(() {
                          isDraggingSlider = false;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      formatDuration(currentPosition),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: _payloads.length,
                    itemBuilder: (context, index) {
                      final payload = _payloads[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            ...payload.contohSoal.map((soal) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 3),
                                  ...soal.contohJawaban.map((jawaban) {
                                    if (jawaban is Map<String, dynamic> &&
                                        jawaban.containsKey('name')) {
                                      return Text('- ${jawaban['name']}');
                                    } else {
                                      return const SizedBox
                                          .shrink(); // Avoid null values
                                    }
                                  }).toList(),
                                  const SizedBox(height: 10),
                                  Text(
                                    soal.soal,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Container(
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
            height: kToolbarHeight + 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Learning Listening TOEFL',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_sharp),
                  onPressed: () {
                    // Add logic to navigate to the next page here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
