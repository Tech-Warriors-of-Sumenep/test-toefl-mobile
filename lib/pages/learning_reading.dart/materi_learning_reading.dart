import 'package:flutter/material.dart';
import 'package:toefl_app/pages/learning_reading.dart/model_learning_reading.dart';

class MateriLearningReadingPage extends StatelessWidget {
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Materi Reading',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Fugaz One',
                ),
              ),
            ),
            Column(
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (index) {
                              case 0:
                                return ModelLearningReadingPages();
                              case 1:
                                return ModelLearningReadingPages();
                              case 2:
                                return ModelLearningReadingPages();
                              case 3:
                                return ModelLearningReadingPages();
                              case 4:
                                return ModelLearningReadingPages();
                              default:
                                return ModelLearningReadingPages();
                            }
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 80.19,
                            top: 22,
                            child: SizedBox(
                              width: 150,
                              child: Text(
                                'Reading Module ${index + 1}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Fugaz One',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 23,
                            child: Container(
                              width: 29,
                              height: 31,
                              child: Image.asset(
                                'images/next.png',
                                height: 30,
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
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
