import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toefl_app/pages/test_grammar/home_test_grammar.dart';
import 'package:toefl_app/pages/learning_grammar/home_grammar.dart';
import 'package:toefl_app/pages/learning_reading.dart/home_learning_reading.dart';
import 'package:toefl_app/pages/learning_listening.dart/materi.dart/home_materi.dart';
import 'package:toefl_app/pages/test_listening/learningtest.dart';
import 'package:toefl_app/pages/test_reading/home_test_reading.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {},
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
          child: Align(
            alignment: Alignment(0, -0.9),
            child: Container(
              width: 430,
              height: 932,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    top: 846,
                    child: Container(
                      width: 430,
                      height: 98,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, -4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 430,
                      height: 932,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Stack(
                        children: [
                          Center(
                            child: Align(
                              alignment: Alignment(0, -0.7),
                              child: Container(
                                width: 330,
                                height: 269,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 1.03,
                                      top: 212,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeMateriPages()),
                                          );
                                        },
                                        child: Container(
                                          width: 328.97,
                                          height: 57,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 328.97,
                                                  height: 57,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    shadows: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x3F000000),
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 79.16,
                                                top: 10,
                                                child: SizedBox(
                                                  width: 82.24,
                                                  child: Text(
                                                    'Listening',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontFamily: 'Fugaz One',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 276.97,
                                                top: 11,
                                                child: Container(
                                                  width: 29,
                                                  height: 31,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Image.asset(
                                                          'images/next.png',
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 15.97,
                                                top: 8,
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Image.asset(
                                                    'images/user.jpeg',
                                                    height: 100,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 118,
                                      child: Container(
                                        width: 328.97,
                                        height: 80,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeLearningReadingPages()),
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 12,
                                                child: Container(
                                                  width: 328.97,
                                                  height: 57,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    shadows: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x3F000000),
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 80.19,
                                                top: 22,
                                                child: SizedBox(
                                                  width: 82.24,
                                                  child: Text(
                                                    'Reading',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontFamily: 'Fugaz One',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 278,
                                                top: 23,
                                                child: Container(
                                                  width: 29,
                                                  height: 31,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Image.asset(
                                                          'images/next.png',
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 15.97,
                                                top: 20,
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Image.asset(
                                                    'images/learning_reading.jpg',
                                                    height: 100,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 38,
                                      child: Container(
                                        width: 328.97,
                                        height: 80,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeLearningGrammarPages()),
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 12,
                                                child: Container(
                                                  width: 328.97,
                                                  height: 57,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    shadows: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x3F000000),
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 80.19,
                                                top: 22,
                                                child: SizedBox(
                                                  width: 82.24,
                                                  child: Text(
                                                    'Grammar',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontFamily: 'Fugaz One',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 278,
                                                top: 24,
                                                child: Container(
                                                  width: 29,
                                                  height: 31,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Image.asset(
                                                          'images/next.png',
                                                          height: 30,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 15.97,
                                                top: 20,
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Image.asset(
                                                    'images/test_grammar.png',
                                                    height: 100,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 6.03,
                                      top: 10,
                                      child: SizedBox(
                                        width: 192.24,
                                        child: Text(
                                          'TOEFL Learning',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Fugaz One',
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment(0, 0.1),
                      child: Container(
                        width: 330,
                        height: 269,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 1.03,
                              top: 212,
                              child: Container(
                                width: 328.97,
                                height: 57,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LearningTest()), // Ganti NextPage() dengan halaman tujuan Anda
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 328.97,
                                          height: 57,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 4,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 79.16,
                                        top: 10,
                                        child: SizedBox(
                                          width: 82.24,
                                          child: Text(
                                            'Listening',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontFamily: 'Fugaz One',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 276.97,
                                        top: 11,
                                        child: Container(
                                          width: 29,
                                          height: 31,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Image.asset(
                                                  'images/next.png',
                                                  height: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 15.97,
                                        top: 8,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Image.asset(
                                            'images/user.jpeg',
                                            height: 300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 118,
                              child: Container(
                                width: 328.97,
                                height: 80,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeTestReadingPages()),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 12,
                                        child: Container(
                                          width: 328.97,
                                          height: 57,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 4,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 80.19,
                                        top: 22,
                                        child: SizedBox(
                                          width: 82.24,
                                          child: Text(
                                            'Reading',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontFamily: 'Fugaz One',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 278,
                                        top: 23,
                                        child: Container(
                                          width: 29,
                                          height: 31,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Image.asset(
                                                  'images/next.png',
                                                  height: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 15.97,
                                        top: 20,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Image.asset(
                                            'images/learning_reading.jpg',
                                            height: 100,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 38,
                              child: Container(
                                width: 328.97,
                                height: 80,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeTestGrammarPages()),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 12,
                                        child: Container(
                                          width: 328.97,
                                          height: 57,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            shadows: [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 4,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 80.19,
                                        top: 22,
                                        child: SizedBox(
                                          width: 82.24,
                                          child: Text(
                                            'Grammar',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontFamily: 'Fugaz One',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 278,
                                        top: 24,
                                        child: Container(
                                          width: 29,
                                          height: 31,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Image.asset(
                                                  'images/next.png',
                                                  height: 30,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 15.97,
                                        top: 20,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Image.asset(
                                            'images/test_grammar.png',
                                            height: 300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 6.03,
                              top: 15,
                              child: SizedBox(
                                width: 192.24,
                                child: Text(
                                  'TOEFL Test',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Fugaz One',
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
                  ),
                  Positioned(
                    left: 25,
                    top: 25,
                    child: Container(
                      width: 345,
                      height: 47,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 345,
                              height: 20,
                              child: Text(
                                'Welcome to TOEFL Test PENS PSDKU-SM',
                                style: TextStyle(
                                  color: Color(0xFF010051),
                                  fontSize: 18,
                                  fontFamily: 'JejuGothic',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 3,
                            top: 31,
                            child: SizedBox(
                              width: 287,
                              height: 16,
                              child: Text(
                                'Prep Smart, Enjoy Learning, Reach Goal!',
                                style: TextStyle(
                                  color: Color(0xFF010051),
                                  fontSize: 13,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
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
            ),
          ),
        ),
      ),
    );
  }
}
