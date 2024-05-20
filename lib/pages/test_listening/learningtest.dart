import 'package:flutter/material.dart';
import 'package:toefl_app/pages/test_listening/audio_page.dart';

class LearningTest extends StatefulWidget {
  const LearningTest({Key? key}) : super(key: key);

  @override
  State<LearningTest> createState() => _LearningTestState();
}

class _LearningTestState extends State<LearningTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight + 10),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 1,
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
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/user2.png'),
                    SizedBox(height: 20),
                    Text(
                      'Test Listening',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(width: 5),
                        Text(
                          '100 menit',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xFF020052),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.book),
                        SizedBox(width: 5),
                        Text(
                          '50 soal',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xFF020052),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 138,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFBFF4A),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0,
                                2), // Sesuaikan offset sesuai dengan preferensi
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AudioPage()),
                          );
                        },
                        child: const Text(
                          'GET STARTED',
                          style: TextStyle(
                            fontSize: 13,
                            color: const Color(0xFF2E00BA),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      'Test Listening Page',
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
      ),
    );
  }
}
