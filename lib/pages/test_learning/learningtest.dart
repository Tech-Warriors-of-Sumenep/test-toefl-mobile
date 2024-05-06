import 'package:flutter/material.dart';

class learningTest extends StatefulWidget {
  const learningTest({Key? key}) : super(key: key);

  @override
  State<learningTest> createState() => _learningTestState();
}

class _learningTestState extends State<learningTest> {
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
                          'images/pens.png',
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
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.yellow,
                      child: Image.asset(
                          'images/user.png'), // Change as per your asset directory
                    ),
                    SizedBox(height: 20),
                    Text('Test learning',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('⏱ 100 menit    🖊️ 50 soal',
                        style: TextStyle(fontSize: 18, color: Colors.grey)),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('GET STARTED'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                    ),
                    SizedBox(height: 30),
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
