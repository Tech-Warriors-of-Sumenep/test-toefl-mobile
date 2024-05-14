import 'package:flutter/material.dart';

class FutureTensePage extends StatefulWidget {
  const FutureTensePage({Key? key}) : super(key: key);

  @override
  State<FutureTensePage> createState() => _FutureTensePageState();
}

class _FutureTensePageState extends State<FutureTensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Column(
        children: [
          Navbar(), // Navbar added here
          Expanded(
            child: ListView(
              children: [
                Frame2(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Frame2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 403,
          height: 810,
          padding: const EdgeInsets.only(bottom: 280),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 403,
                height: 530,
                child: Stack(
                  children: [
                    Positioned(
                      left: 9,
                      top: 192,
                      child: SizedBox(
                        width: 386,
                        height: 125,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Catatan:\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Tense Forms:\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '- S will/not will + V\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Masa depan yang sederhana dengan "be" am/ He is/ She\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'is/ It is/ You are/ We are/ They are (+ NOT)\n',
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
                      left: 64,
                      top: 12,
                      child: SizedBox(
                        width: 274,
                        height: 29,
                        child: Text(
                          'The Simple Future Tense',
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
                      left: 9,
                      top: 324,
                      child: SizedBox(
                        width: 386,
                        height: 206,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Catatan:\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Terkadang, kita berbicara tentang jadwal yang tidak \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'berubah di masa depan namun, kita menggunakan simple tense untuk membentuk kata kerja.\nExample:The store opens at 9 am tomorrow.\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Terkadang, kita berbicara tentang keputusan atau rencana\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'yang dibuat untuk masa depan, namun, kita menggunakan" be going to Verb untuk membentuk kata kerja \nExample: I am going to Russia next year,\n',
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
                      left: 9,
                      top: 62,
                      child: SizedBox(
                        width: 386,
                        height: 123,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Kami menggunakan saat:\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'tindakan yang belum terjadi tetapi akan terjadi di masa\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'depan. Kami menggunakan will/shall + Verb" untuk membentuk bentuk kata kerja masa depan Example: I will miss you when you leave.\n',
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
    );
  }
}

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        backgroundColor: Colors.white, // Set background color to white
        leading: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black, // Set icon color to black
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
              'images/pens_remBG.png', // You may need to adjust the image path
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
