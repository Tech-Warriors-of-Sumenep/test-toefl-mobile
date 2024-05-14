import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class kategoripage extends StatefulWidget {
  const kategoripage({Key? key}) : super(key: key);

  @override
  State<kategoripage> createState() => _MenuPageState();
}

class _MenuPageState extends State<kategoripage> {
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
                  Icons.menu,
                ),
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
      body: Center(
          child: Container(
        width: 430,
        height: 932,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 846,
              child: Container(
                width: 430,
                height: 98,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 430,
                        height: 98,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, -4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 262,
                      top: 17,
                      child: Container(
                        width: 91,
                        height: 69,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 24,
                              child: Text(
                                'Categories',
                                style: TextStyle(
                                  color: Color(0xFF0A0099),
                                  fontSize: 20,
                                  fontFamily: 'Javanese Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 35,
                              top: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 84,
                      top: 18,
                      child: Container(
                        width: 93,
                        height: 68,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 23,
                              child: Text(
                                'Dashboard',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Javanese Text',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 31,
                              top: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFD9D9D9)),
                                      ),
                                    ),
                                  ],
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
            ),
            Center(
              child: Align(
                alignment: Alignment(0, -0.30),
                child: Container(
                  width: 330,
                  height: 356,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Container(
                          width: 328.97,
                          height: 57,
                          decoration: ShapeDecoration(
                            color: Color(0xFFBCD235),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: Center(
                            child: SizedBox(
                              width: 270,
                              child: Text(
                                'Tingkat Dasar (Elementary) 310 - 420',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Fugaz One',
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 83,
                        child: Container(
                          width: 328.97,
                          height: 57,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD2A635),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: Center(
                            child: SizedBox(
                              width: 275,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Tingkat Menengah Bawah (Low Intermediate)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Fugaz One',
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' = 420 - 480',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Fugaz One',
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 166,
                        child: Container(
                          width: 328.97,
                          height: 57,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD27634),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: Center(
                            child: SizedBox(
                              width: 275,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Tingkat Menengah Atas (High Intermediate)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Fugaz One',
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' = 480 - 520',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Fugaz One',
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 249,
                        child: Container(
                          width: 328.97,
                          height: 57,
                          decoration: ShapeDecoration(
                            color: Color(0xFFCE1A1A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
                          child: Center(
                            child: SizedBox(
                              width: 242,
                              child: Text(
                                'Tingkat Mahir (Advanced) = 565 - 677',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Fugaz One',
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 328.97,
                          height: 57,
                          child: Center(
                            child: Text(
                              'TOEFL Category',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Fugaz One',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 40,
              child: Container(
                width: 345,
                height: 47,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SizedBox(
                        width: 345,
                        height: 20,
                        child: Text(
                          'Welcome to TOEFL Test PENS PSDKU-SM',
                          style: TextStyle(
                            color: Color(0xFF010051),
                            fontSize: 18,
                            fontFamily: 'JejuGothic',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 3.0), // Offset bayangan
                                blurRadius: 5.0, // Tingkat blur bayangan
                                color: Color.fromARGB(128, 0, 0,
                                    0), // Warna bayangan dengan transparansi
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 3,
                      top: 31,
                      child: SizedBox(
                        width: 287,
                        height: 16,
                        child: Text(
                          'Prep Smart, Enjoy Learning, Reach Goal!',
                          style: TextStyle(
                            color: Color(0xFF010051),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
