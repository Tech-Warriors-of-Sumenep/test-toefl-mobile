import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FinishPage extends StatefulWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
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
          // Konten halaman
          Positioned(
            left: 210,
            top: 410,
            child: Container(
              width: 195,
              height: 49,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 195,
                      height: 49,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F1F1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 126,
                    top: 16,
                    child: SizedBox(
                      width: 31.97,
                      child: Text(
                        ': 50',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 13.85,
                    top: 16,
                    child: SizedBox(
                      width: 118.28,
                      child: Text(
                        'Total Question',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 410,
            child: Container(
              width: 183,
              height: 49,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 183,
                      height: 49,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F1F1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 96,
                    top: 16,
                    child: SizedBox(
                      width: 70,
                      child: Text(
                        ': 98 m 5s',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 16,
                    child: SizedBox(
                      width: 88,
                      child: Text(
                        'Total Time',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 340,
            child: Container(
              width: 190.82,
              height: 49,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 183,
                      height: 49,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F1F1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 134,
                    top: 16,
                    child: SizedBox(
                      width: 56.82,
                      child: Text(
                        ': 43',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 16,
                    child: SizedBox(
                      width: 130,
                      child: Text(
                        'Correct Answer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 210,
            top: 340,
            child: Container(
              width: 195,
              height: 49,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 194.75,
                      height: 49,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F1F1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 148,
                    top: 16,
                    child: SizedBox(
                      width: 47,
                      child: Text(
                        ': 7',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.96,
                    top: 16,
                    child: SizedBox(
                      width: 131.96,
                      child: Text(
                        'Incorrect Answer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 129,
            top: 100,
            child: Container(
              width: 160,
              height: 160,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: ShapeDecoration(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0),
                        shape: OvalBorder(
                          side: BorderSide(width: 3, color: Color(0xFF027D44)),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color.fromARGB(59, 255, 255, 255),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 31,
                    top: 62,
                    child: Text(
                      'FINISH ',
                      style: TextStyle(
                        color: Color(0xFF2BB231),
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 116,
            top: 500,
            child: Container(
              width: 199,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 199,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: HexColor("#BCD235"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 12,
                    child: SizedBox(
                      width: 197,
                      height: 25,
                      child: Text(
                        'Elementary',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
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
              'Evaluate Listening Page',
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
    );
  }
}
