// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:toefl_app/pages/menu_page/dasboard.dart';

import 'package:toefl_app/pages/test_listening/listening_test.dart';

class ExitCard extends StatefulWidget {
  const ExitCard({Key? key}) : super(key: key);

  @override
  State<ExitCard> createState() => _ExitCardState();
}

class _ExitCardState extends State<ExitCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: ExitConfirmationCard(),
        ),
      ),
    );
  }
}

class ExitConfirmationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              'images/BoxImportant.png',
              width: 120,
              height: 120,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 4),
            child: Text(
              'Are you sure you want to exit?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 4),
            child: Text(
              'You will lose your progress and will need to',
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 10, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'start the test from the beginning',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 10, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, // Set background color to blue
                  textStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Bentuk tombol menjadi bulat
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 85), // Set text color to white
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            listening()), // Pindah ke ModelMateriPages
                  );
                },
                child: Text('Go back',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    )),
              ),
              SizedBox(height: 4), // Adds space between the buttons
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MenuPage()), // Pindah ke ModelMateriPages
                  );
                },
                child: Text('Exit the test',
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
