import 'package:flutter/material.dart';
import 'soal1.dart';

class HomeTestGrammarPages extends StatefulWidget {
  const HomeTestGrammarPages({Key? key}) : super(key: key);

  @override
  State<HomeTestGrammarPages> createState() => _HomeTestGrammarPagesState();
}

class _HomeTestGrammarPagesState extends State<HomeTestGrammarPages> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/test_grammar.png',
            width: 300,
            height: 300,
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 15), // Menambahkan margin bawah
            child: const Text(
              'Test Grammar',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30), // Menambahkan margin bawah
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time),
                const SizedBox(width: 5),
                Text(
                  '100 menit',
                  style: TextStyle(
                    fontSize: 18, // Ubah ukuran font menjadi 18px
                    color: const Color(0xFF020052), // Ubah warna teks
                  ),
                ),
                const SizedBox(width: 20),
                const Icon(Icons.book),
                const SizedBox(width: 5),
                Text(
                  '50 soal',
                  style: TextStyle(
                    fontSize: 18, // Ubah ukuran font menjadi 18px
                    color: const Color(0xFF020052), // Ubah warna teks
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
                      0, 2), // Sesuaikan offset sesuai dengan preferensi
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Soal1Pages()),
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
    );
  }
}