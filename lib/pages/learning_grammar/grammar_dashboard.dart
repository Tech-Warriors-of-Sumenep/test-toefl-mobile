import 'package:flutter/material.dart';
import 'package:toefl_app/pages/learning_grammar/subject_and_verb_aggrement.dart';
import 'package:toefl_app/pages/learning_grammar/the_simple_present_tense.dart';
import 'nouns.dart';

class grammarDashboard extends StatefulWidget {
  const grammarDashboard({Key? key}) : super(key: key);

  @override
  State<grammarDashboard> createState() => _grammarDashboardState();
}

class _grammarDashboardState extends State<grammarDashboard> {
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TestGrammarPage(),
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

class TestGrammarPage extends StatelessWidget {
  const TestGrammarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 341,
                height: 1483,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 62.44,
                      child: Container(
                        width: 341,
                        height: 1420.56,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 328.97,
                              height: 80,
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
                                        'Nouns',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          nounsPage()),
                                                );
                                              },
                                              child: Container(
                                                width: 29,
                                                height: 31,
                                                child: Image.asset(
                                                    'images/drive_file_move.png'),
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
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 145,
                                      child: Text(
                                        'Subject and verb agreement',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SubjectAndVerbPage()),
                                                );
                                              },
                                              child: Container(
                                                width: 29,
                                                height: 31,
                                                child: Image.asset(
                                                    'images/drive_file_move.png'),
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
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 145,
                                      child: Text(
                                        'The simple present tense',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          TheSimplePresentTensePages()),
                                                );
                                              },
                                              child: Container(
                                                width: 29,
                                                height: 31,
                                                child: Image.asset(
                                                    'images/drive_file_move.png'),
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
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 143,
                                      child: Text(
                                        'the simple past tense',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 144,
                                      child: Text(
                                        'The simple future tense',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 146,
                                      child: Text(
                                        'Gerunds and infinitive',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Modal verbs',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Pronouns',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Articles',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Prepositions',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Adverb',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Adverb',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Conjunctions',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Punctuations',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Sentences',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 328.97,
                              height: 80,
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
                                    left: 80,
                                    top: 22,
                                    child: SizedBox(
                                      width: 118,
                                      child: Text(
                                        'Conditional sentence',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      padding: const EdgeInsets.only(
                                        top: 21.52,
                                        left: 20.95,
                                        right: 20.95,
                                        bottom: 21.51,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 38.10,
                                            height: 36.97,
                                            child: Stack(),
                                          ),
                                        ],
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
                                            child: Container(
                                              width: 29,
                                              height: 31,
                                              child: Image.asset(
                                                  'images/drive_file_move.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 95,
                      top: 0,
                      child: SizedBox(
                        width: 152,
                        height: 44.88,
                        child: Text(
                          'Materi Grammar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
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
