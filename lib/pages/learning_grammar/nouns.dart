import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toefl_app/model/flip_materi.dart';

class NounsPage extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final String files;

  const NounsPage({
    Key? key,
    required this.id,
    required this.title,
    required this.description,
    required this.files,
  }) : super(key: key);

  @override
  State<NounsPage> createState() => _NounsPageState();
}

class _NounsPageState extends State<NounsPage> {
  late Future<List<FlipMateri>> futureFlip;

  @override
  void initState() {
    super.initState();
    futureFlip = fetchFlipMateri(widget.id);
  }

  Future<List<FlipMateri>> fetchFlipMateri(int materiId) async {
    final response = await http.get(Uri.parse('http://192.168.1.13:8000/api/flipmateri'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> payload = data['payload'];

      // Filter data berdasarkan materiId
      final filteredData = payload.where((element) => element['materi_id'] == materiId).toList();

      return FlipMateri.fromJsonList(filteredData);
    } else {
      throw Exception('Failed to load data');
    }
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
                icon: const Icon(
                  Icons.arrow_back,
                ),
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: LearningReadingPage(
                    title: widget.title,
                    description: widget.description,
                    file: widget.files,
                    futureFlip: futureFlip,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
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
                    'Grammar Page',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LearningReadingPage extends StatefulWidget {
  final String title;
  final String description;
  final String file;
  final Future<List<FlipMateri>> futureFlip;

  const LearningReadingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.file,
    required this.futureFlip,
  }) : super(key: key);

  @override
  _LearningReadingPageState createState() => _LearningReadingPageState();
}

class _LearningReadingPageState extends State<LearningReadingPage> {
  bool _showFront = true;

  void _flipImage() {
    setState(() {
      _showFront = !_showFront;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      widget.description,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    FutureBuilder<List<FlipMateri>>(
                      future: widget.futureFlip,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(child: Text('Error: ${snapshot.error}'));
                        } else if (snapshot.hasData) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                
                              ),
                              Column(
                                children: snapshot.data!.map((materi) {
                                  return GestureDetector(
                                    onTap: _flipImage,
                                    child: AnimatedSwitcher(
                                      duration: const Duration(seconds: 1),
                                      transitionBuilder: (Widget child, Animation<double> animation) {
                                        final flipAnim = Tween(begin: pi, end: 0.0).animate(animation);
                                        return AnimatedBuilder(
                                          animation: flipAnim,
                                          child: child,
                                          builder: (BuildContext context, Widget? child) {
                                            final angle = flipAnim.value;
                                            return Transform(
                                              transform: Matrix4.rotationY(angle),
                                              alignment: Alignment.center,
                                              child: child,
                                            );
                                          },
                                        );
                                      },
                                      child: _showFront
                                        ? Transform.translate(
                                            offset: Offset(0, -10), // Move image up by 10 pixels
                                            child: Image.network(
                                              'http://192.168.1.13:8000/api/imagesflip/' + materi.file,
                                              key: ValueKey<bool>(_showFront),
                                              width: 300, // Reduced width
                                              height: 225, // Reduced height
                                              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                                if (loadingProgress == null) {
                                                  return child;
                                                } else {
                                                  return Center(
                                                    child: CircularProgressIndicator(
                                                      value: loadingProgress.expectedTotalBytes != null
                                                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                                          : null,
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          )
                                        : Container(
                                            key: ValueKey<bool>(!_showFront),
                                            width: 300, // Adjusted to match the reduced image size
                                            height: 225, // Adjusted to match the reduced image size
                                            color: Colors.transparent, // Set to transparent color
                                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Add padding
                                            child: Center(
                                              child: Text(
                                                '${materi.description}',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: 60),
                            ],
                          );
                        } else {
                          return Container(); // Placeholder widget for other states
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
