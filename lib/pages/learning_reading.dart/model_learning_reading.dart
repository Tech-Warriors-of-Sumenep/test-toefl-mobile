import 'package:flutter/material.dart';
import 'package:toefl_app/pages/learning_reading.dart/contoh_soal_learning_reading.dart';
//import 'home_learning_reading.dart';

class ModelLearningReadingPages extends StatefulWidget {
  const ModelLearningReadingPages({Key? key}) : super(key: key);

  @override
  State<ModelLearningReadingPages> createState() =>
      _ModelLearningReadingPagesState();
}

class _ModelLearningReadingPagesState extends State<ModelLearningReadingPages> {
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
                padding: const EdgeInsets.only(right: 10.0),
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
                  child: LearningReadingPage(),
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
                    'Learning Reading TOEFL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Your function here
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(Icons.arrow_forward),
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

class LearningReadingPage extends StatelessWidget {
  const LearningReadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
            ), // Menambahkan space antara gambar dan teks
            child: Align(
              alignment: Alignment.center,
              child: const Text(
                'Model 1',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 10, // Memberikan jarak ke kiri
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Main Idea, Main Topic, Main Purpose',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: const Color(0xFF020052),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'a. Main Idea = ide utama yang dapat ditentukan dengan membaca dan menyimpulkannya. Cara Menjawab: Baca satu kalimat atau lebih pada tiap paragraph. Simpulkan, kemudian sesuaikan dengan pilihan jawaban. Jika tidak ada, baca paragraph 1 secara menyeluruh.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'b. Main Purpose\nStory text = to entertain, to retell\nOpinion text = to present, to persuade\nInformation text = to explain, to report/inform, to describe, to show how.......',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'c. Main Topic = topic utama yang dapat ditentukan dari theme dan kata-kata yang muncul dari paragraph 1. Cara menjawab: Baca satu kalimat atau lebih pada paragraf 1. Sesuaikan dengan pilihan jawaban. Kata yang banyak kesamaan dengan pilihan jawaban, memungkinkan menjadi jawaban terbaik',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
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
                  offset: const Offset(
                    0,
                    2,
                  ),
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ContohSoalLearningReading()), // Pindah ke ModelLearningReadingPages
                );
              },
              child: const Text(
                'CONTOH SOAL',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E00BA),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
