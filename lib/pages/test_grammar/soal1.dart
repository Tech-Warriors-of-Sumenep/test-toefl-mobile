import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'finish.dart';
import 'package:toefl_app/model/test_grammar.dart';
import 'package:http/http.dart' as http;

class Soal1Pages extends StatefulWidget {
  const Soal1Pages({Key? key}) : super(key: key);

  @override
  State<Soal1Pages> createState() => _Soal1PagesState();
}

class _Soal1PagesState extends State<Soal1Pages> {
  int _currentQuestionIndex = 0;
  int _selectedAnswerIndex = -1;
  late Timer _timer;
  late Future<List<test_grammar>> futuregrammar;
  late AsyncSnapshot<List<test_grammar>> snapshot;
 static const int _durationInSeconds = 3600; // Mengatur waktu selama satu jam (3600 detik)
  int _secondsRemaining = _durationInSeconds;

  @override
  void initState() {
    super.initState();
    _startTimer();
    futuregrammar = fetchtestgrammar();
  }

  Future<List<test_grammar>> fetchtestgrammar() async {
    final response = await http.get(Uri.parse('http://192.168.0.104:8000/api/ujian-grammar'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> payload = data['payload'];
      return test_grammar.fromJsonList(payload);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          timer.cancel();
          Navigator.push(
            context,
             MaterialPageRoute(
          builder: (context) => Finishtestgrammar(totalTime: _durationInSeconds - _secondsRemaining),
        ),
          );
        }
      });
    });
  }

  void _checkAnswer(int selectedIndex) {
    setState(() {
      _selectedAnswerIndex = selectedIndex;
    });
  }
void _nextQuestion() {
  setState(() {
    if (_currentQuestionIndex < 19) {
      _currentQuestionIndex++;
      _selectedAnswerIndex = -1;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Finishtestgrammar(totalTime: _durationInSeconds - _secondsRemaining),
        ),
      );
    }
  });
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
                  if (_currentQuestionIndex > 0) {
                    setState(() {
                      _currentQuestionIndex--;
                    });
                  } else {
                    Navigator.of(context).pop();
                  }
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                       MaterialPageRoute(
          builder: (context) => Finishtestgrammar(totalTime: _durationInSeconds - _secondsRemaining),
        ),
                    );
                  },
                  child: Container(
                    width: 72,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xFFCE1A1A),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'FINISH',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Istok Web',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Spacer(), // Kolom kosong
                InkWell(
                  onTap: () {
                    _nextQuestion();
                  },
                  child: Container(
                    width: 72,
                    height: 24,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF1A6DCE),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 17,
                          top: 1,
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Istok Web',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment(0, -0.7), // Sesuaikan nilai untuk mengatur posisi vertikal
              child: Container(
                width: 403,
                height: 263,
                child: FutureBuilder<List<test_grammar>>(
                  future: futuregrammar,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(); // Show a loading indicator while waiting for data
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List<test_grammar> questions = snapshot.data ?? [];
                      List<String> options = ['a', 'b', 'c', 'd', 'e']; // Jawaban sementara
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 403,
                            height: 263,
                            decoration: ShapeDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
                                SizedBox(
                                  width: 350,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Text(
                                      questions[_currentQuestionIndex].title,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20), // Jarak antara pertanyaan dan jawaban
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(
                                    options.length,
                                    (index) {
                                      return InkWell(
                                        onTap: () {
                                          _checkAnswer(index);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 33),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 14,
                                                height: 14,
                                                decoration: BoxDecoration(
                                                  color: _selectedAnswerIndex == index
                                                      ? Colors.blue
                                                      : Color(0xFFF2F2F2),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              Text(
                                                options[index],
                                                style: TextStyle(
                                                  color: _selectedAnswerIndex == index
                                                      ? Colors.blue
                                                      : Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 150,
                            top: 15,
                            child: Text(
                              'Question ${_currentQuestionIndex + 1}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 76,
              height: 30,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 76,
                      height: 30,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 5,
                    child: SizedBox(
                      width: 58,
                      height: 20,
                      child: Text(
                        '${_secondsRemaining ~/ 60}:${(_secondsRemaining % 60).toString().padLeft(2, '0')}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                    'Test Grammar Page',
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
