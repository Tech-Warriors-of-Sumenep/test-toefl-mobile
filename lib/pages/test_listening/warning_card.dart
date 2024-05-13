// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:toefl_app/pages/test_listening/audio_page.dart';
import 'package:toefl_app/pages/test_listening/learningtest.dart';

class VolumeTest extends StatefulWidget {
  const VolumeTest({Key? key}) : super(key: key);

  @override
  State<VolumeTest> createState() => _VolumeTestState();
}

class _VolumeTestState extends State<VolumeTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: SoundTestCard(),
        ),
      ),
    );
  }
}

class SoundTestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.hearing, size: 100, color: Colors.yellow[700]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: Text(
              'You need sound to take the test',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text(
              'You need to listen to answer the questions',
              style: TextStyle(fontSize: 12, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, // Set background color to blue
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ), // Set text color to white
                  padding: EdgeInsets.symmetric(horizontal: 85.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Ubah ukuran rounded corners di sini
                  ), // Atur padding di sini
                ),
                onPressed: () {
                  // Navigasi ke halaman AudioPage() ketika tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AudioPage()),
                  );
                },
                child: Text('Try again',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    )),
              ),

              SizedBox(height: 4), // Adds space between the buttons
              TextButton(
                onPressed: () {
                  // Navigasi ke halaman AudioPage() ketika tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LearningTest()),
                  );
                },
                child: Text('Take the test later',
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'Poppins')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
