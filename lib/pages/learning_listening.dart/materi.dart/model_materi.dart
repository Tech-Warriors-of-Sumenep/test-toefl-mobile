import 'package:flutter/material.dart';
import 'home_materi.dart';

class ModelMateriPages extends StatefulWidget {
  const ModelMateriPages({Key? key}) : super(key: key);

  @override
  State<ModelMateriPages> createState() => _ModelMateriPagesState();
}

class _ModelMateriPagesState extends State<ModelMateriPages> {
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

class MateriPage extends StatelessWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ), // Menambahkan space antara gambar dan teks
            child: Align(
              alignment: Alignment.center,
              child: const Text(
                'Pengenalan',
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
                const SizedBox(height: 3),
                Text(
                  'Listening TOEFL adalah bagian ujian yang menguji kemampuan seseorang dalam mendengarkan dan memahami bahasa Inggris secara lisan.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Di sini, peserta ujian akan mendengarkan percakapan, penjelasan singkat, atau diskusi, lalu menjawab pertanyaan tentang apa yang mereka dengar.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kemampuan mendengarkan yang baik sangat penting untuk skor TOEFL yang tinggi.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kamu harus baca petunjuk dan pertanyaan dengan hati-hati sebelum mendengarkan rekaman. Selain itu kamu juga perlu menjaga konsentrasi dan fokus karena audio listening hanya diperdengarkan sekali.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Cobalah mendapatkan ide dari situasi yang kamu dengar, seperti siapa pembicaranya, dimana mereka, dan mengapa mereka membicarakan hal tersebut. Biasanya pertanyaan yang sering muncul dalam sesi ini akan seperti berikut ini:',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '-> What is the main topic of the lecture?'
                  'Apa topik utama dari kuliah ini?',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '-> What are the speakers mainly discussing?'
                  'Apa yang dibahas oleh pembicara utamanya?',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '-> What is the lecture mainly about...'
                  'Apa yang utamanya dibahas dalam kuliah ini...',
                  style: TextStyle(
                    fontSize: 13,
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
                          ModelMateriPages()), // Pindah ke ModelMateriPages
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
