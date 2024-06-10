import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ShortConversationPages extends StatefulWidget {
  const ShortConversationPages({Key? key}) : super(key: key);

  @override
  State<ShortConversationPages> createState() => _ShortConversationPagesState();
}

class _ShortConversationPagesState extends State<ShortConversationPages> {
  final player = AudioPlayer();
  bool isPlaying = false;
  bool isDraggingSlider = false;
  Duration currentPosition = Duration.zero;
  Duration totalDuration = Duration.zero;

  String title = '';
  String description = '';
  String audioUrl =
      'http://10.251.134.193:8000/storage/files/listening/pjs3CZrcE3tkCjl6Votm4KHa0l8y4PoLKuDBLmSx.mp3';

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
    try {
      final response = await http
          .get(Uri.parse('http://10.251.134.193:8000/api/MateriListening'));

      if (response.statusCode == 200) {
        final responseBody = response.body;
        final data = json.decode(responseBody);
        final payload = data['payload'][0];

        setState(() {
          title = payload['title'] ?? 'Title not available';
          description = payload['description'] ?? 'Description not available';
        });
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching data: $error');
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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
                          icon:
                              Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                          onPressed: () async {
                            if (isPlaying) {
                              await player.pause();
                              print('Audio paused');
                            } else {
                              await playAudioFromUrl(audioUrl);
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
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
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
    );
  }
}
