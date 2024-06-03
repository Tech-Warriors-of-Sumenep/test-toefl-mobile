import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toefl_app/pages/menu_page/navigasi.dart';

class FinishPage extends StatefulWidget {
  final int correctAnswers;
  final int incorrectAnswers;
  final Duration totalTimeSpent;

  const FinishPage({
    required this.correctAnswers,
    required this.incorrectAnswers,
    required this.totalTimeSpent,
  });

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    int totalQuestions = widget.correctAnswers + widget.incorrectAnswers;

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
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
      body: Stack(
        children: [
          // Konten halaman
          Center(
            child: Row(
              children: [
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResultBox(
                      title: 'Correct Answer',
                      value: widget.correctAnswers.toString(),
                    ),
                    SizedBox(height: 10),
                    ResultBox(
                      title: 'Total Time',
                      value: widget.totalTimeSpent.toString(),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResultBox(
                      title: 'Incorrect Answer',
                      value: widget.incorrectAnswers.toString(),
                    ),
                    SizedBox(height: 10),
                    ResultBox(
                      title: 'Total Question',
                      value: totalQuestions.toString(),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          Center(
            child: Transform.translate(
              offset: Offset(0, -150),
              child: Container(
                width: 160,
                height: 160,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0),
                          shape: OvalBorder(
                            side: BorderSide(width: 3, color: Color(0xFF027D44)),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color.fromARGB(57, 255, 255, 255),
                              blurRadius: 4,
                              offset: Offset(0, 0),
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'FINISH',
                          style: TextStyle(
                            color: Color(0xFF2BB231),
                            backgroundColor: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 400),
              width: 199,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 199,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: HexColor("#BCD235"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 12,
                    child: SizedBox(
                      width: 197,
                      height: 25,
                      child: Text(
                        'Elementary',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
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
              'Evaluate Listening Page',
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
    );
  }
}

class ResultBox extends StatelessWidget {
  final String title;
  final String value;

  const ResultBox({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 49,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 170,
              height: 49,
              decoration: ShapeDecoration(
                color: Color(0xFFF1F1F1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 130,
            top: 16,
            child: SizedBox(
              width: 35,
              child: Text(
                ': $value',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 16,
            child: SizedBox(
              width: 120,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
