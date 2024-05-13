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
        alignment:
            Alignment.center, // Menjadikan alignment stack menjadi center
        children: [
          // Konten halaman
          Positioned(
            left: 240,
            top: 370,
            child: Container(
              width: 222,
              height: 49,
              child: Stack(
                alignment: Alignment
                    .center, // Menjadikan alignment stack menjadi center
                children: [
                  Positioned(
                    // Menggeser ke kiri setengah dari lebar container
                    child: Container(
                      width: 222,
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
                    right: 26,
                    child: SizedBox(
                      width: 40,
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
                    left:
                        10, // Menggeser ke kanan setengah dari lebar container
                    child: SizedBox(
                      width: 130,
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
            left: 20,
            top: 370,
            child: Container(
              width: 207,
              height: 49,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Container(
                      width: 207,
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
                    right: 13,
                    child: SizedBox(
                      width: 80,
                      child: Text(
                        ' 98 m 5s',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        'Total Time : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.6,
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
            left: 20,
            top: 300,
            child: Container(
              width: 207,
              height: 49,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Container(
                      width: 207,
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
                    right: 22,
                    child: SizedBox(
                      width: 46.82,
                      child: Text(
                        ':  43',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.6,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    child: SizedBox(
                      width: 130,
                      child: Text(
                        'Correct Answer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.6,
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
            left: 240,
            top: 300,
            child: Container(
              width: 225,
              height: 49,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Container(
                      width: 225,
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
                    right: 27,
                    child: SizedBox(
                      width: 27,
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
                    left: 13,
                    child: SizedBox(
                      width: 150,
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
            left: 156,
            top: 100,
            child: Container(
              width: 162,
              height: 160,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Container(
                      width: 162,
                      height: 162,
                      decoration: ShapeDecoration(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0),
                        shape: CircleBorder(
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
                    right: 16.5,
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
            left: 130,
            top: 450,
            child: Container(
              width: 210,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 210,
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
                    left: 10,
                    top: 9,
                    child: SizedBox(
                      width: 197,
                      height: 30,
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
