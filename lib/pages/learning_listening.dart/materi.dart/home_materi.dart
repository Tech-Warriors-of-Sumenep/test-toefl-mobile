import 'package:flutter/material.dart';
import 'model_materi.dart';

class HomeMateriPages extends StatefulWidget {
  const HomeMateriPages({Key? key}) : super(key: key);

  @override
  State<HomeMateriPages> createState() => _HomeMateriPagesState();
}

class _HomeMateriPagesState extends State<HomeMateriPages> {
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
                  child: MateriPage(),
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
                    'Learning Listening TOEFL',
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

class MateriPage extends StatelessWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100), // Space di atas gambar
          Image.asset(
            'images/learning_reading.jpg',
            width: 180,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 15,
                bottom: 15), // Menambahkan space antara gambar dan teks
            child: const Text(
              'Materi Pembelajaran',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                Text(
                  'Listening TOEFL',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF020052),
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
                          ModelMateriPages()), // Pindah ke ModelMateriPages
                );
              },
              child: const Text(
                'GET STARTED',
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
