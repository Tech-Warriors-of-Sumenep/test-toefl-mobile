import 'package:flutter/material.dart';
import 'package:toefl_app/model/learning_reading.dart';

class ContohSoalLearningReading extends StatefulWidget {
  final List<Soal> soalList;

  const ContohSoalLearningReading({Key? key, required this.soalList})
      : super(key: key);

  @override
  _ContohSoalLearningReadingState createState() =>
      _ContohSoalLearningReadingState();
}

class _ContohSoalLearningReadingState extends State<ContohSoalLearningReading> {
  int _currentSoalIndex = 0;

  void _nextSoal() {
    setState(() {
      if (_currentSoalIndex < widget.soalList.length - 1) {
        _currentSoalIndex++;
      } else {
        _currentSoalIndex = 0; // Go back to the first question if at the end
      }
    });
  }

  void _previousSoal() {
    setState(() {
      if (_currentSoalIndex > 0) {
        _currentSoalIndex--;
      } else {
        _currentSoalIndex = widget.soalList.length - 1; // Go to the last question if at the beginning
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentSoal = widget.soalList[_currentSoalIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Soal'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              currentSoal.text,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: currentSoal.jawabanList.map((jawaban) {
                return Card(
                  child: ListTile(
                    title: Text(jawaban.text),
                    onTap: () {
                      // Handle answer selection
                    },
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _previousSoal,
                  child: Text('Previous'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _nextSoal,
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
            children: const [
              Text(
                'Learning Reading TOEFL',
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
    );
  }
}
