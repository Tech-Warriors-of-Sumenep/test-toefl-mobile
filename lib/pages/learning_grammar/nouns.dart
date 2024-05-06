import 'package:flutter/material.dart';

class nounsPage extends StatefulWidget {
  const nounsPage({Key? key}) : super(key: key);

  @override
  State<nounsPage> createState() =>
      _nounsPageState();
}

class _nounsPageState extends State<nounsPage> {
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
                    'Grammar Page',
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

class LearningReadingPage extends StatelessWidget {
  const LearningReadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
          children: [
            Container(
              width: 403,
              height: 1206,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 403,
                    height: 1198,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 163,
                          top: 16,
                          child: SizedBox(
                            width: 77,
                            height: 36,
                            child: Text(
                              'Nouns',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.50,
                          top: 62,
                          child: SizedBox(
                            width: 386,
                            height: 156,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Kata benda umum:\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Definisi:kata benda umum adalah kata-kata yang\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'digunakan untuk memberi nama item umum daripada spesifik                                  Contoh:\nCup : Gelas.\nWatch: Jam Tangan',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      color: Color(0xFF0A0099),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          top: 572,
                          child: SizedBox(
                            width: 386,
                            height: 626,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Jamak:\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '-Definisi: Kata benda yang digunakan untuk menunjukkan dua hal atau lebih. orang, hewan, tempat... disebut kata benda jamak.\n\n-Aturan untuk membentuk jamak:\n+Sebagian besar kata benda yang kita tambahkan "s":\nExample: tool > tool s:\n\n+Beberapa kata benda diakhiri dengan "s", "x", "z", "sh", "o", dan "ch", kam menambahkan "es": \nExample: loss=> losses,\n\nBeberapa kata benda yang diakhiri dengan "V", kita sering mengubah "y" menjadi dan menambahkan "es":\nExample: dictionary => dictionar les \nBeberapa kata benda yang diakhiri dengan "f", "fe" kami mengubah "f", "fe" menjadi "ves":\nExample: calf => cal ves\nBeberapa kata benda memiliki vokal sebelum "y", jadi kita hanya perlu menambahkan "s"\nExample: key => key s\n+ Beberapa kata benda yang diakhiri dengan "o", "f" atau "fe", kita hanya perlu menambahkan "s"\nExample: cliff => cliff s \n+Beberapa kata benda kita harus mengubah ejaan.\nExample: mouse => mice\n+ Beberapa kata benda memiliki bentuk yang sama dengan kata benda tunggal.\nExample: deer\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.50,
                          top: 402,
                          child: SizedBox(
                            width: 386,
                            height: 156,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Tunggal:\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '-Definisi:Kata benda yang digunakan untuk menunjukkan satu\nhal,satu orang satu hewan,satu tempat.....disebut kata benda\ntunggal                                 Contoh:\nA Dentist\nA Cat',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.50,
                          top: 232,
                          child: SizedBox(
                            width: 386,
                            height: 156,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Kata benda yang tepat:\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '-Kata benda yang tepat adalah nama orang,nama tempat,atau hal tertentu.Huruf pertama dari kata seperti itu ditulis dengan huruf besar                                 Contoh:\nThe Big Ben Tower\nThe Eiffel Tower',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
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
