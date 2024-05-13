import 'package:flutter/material.dart';

class FinishPagereading extends StatefulWidget {
  const FinishPagereading({Key? key}) : super(key: key);

  @override
  State<FinishPagereading> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPagereading> {
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
         Center(
          child: Row(
            children: [
              Spacer(), // Menambahkan ruang kosong di sebelah kiri agar kotak-kotak di sebelah kanan berada lebih dekat dengan tengah
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    width: 170,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 170,
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
                            width: 35,
                            child: Text(
                              '  : 43',
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
                            width: 120,
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
                  
                  SizedBox(height: 10),
                  Container(
                    width: 170,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 170,
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
                ],
              ),
              Spacer(), // Menambahkan ruang kosong di sebelah kanan agar kotak-kotak di sebelah kiri berada lebih dekat dengan tengah
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    width: 170,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 170,
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
                            width:40,
                            child: Text(
                              '     : 7',
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
                            width: 130,
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
                  SizedBox(height: 10),
                  Container(
                    width: 170,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 170,
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
                              '         : 50',
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
                            width: 120,
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
                ],
              ),
              Spacer(), // Menambahkan ruang kosong di sebelah kanan dari kotak-kotak di sebelah kanan
            ],
          ),
        ),
 
  
  

      Center(
  child: Transform.translate(
    offset: Offset(0, -150), // Sesuaikan dengan nilai yang sesuai untuk posisi vertikal
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
                color: Color.fromARGB(255, 253, 253, 253).withOpacity(0),
                shape: OvalBorder(
                  side: BorderSide(width: 3, color: Color(0xFF027D44)),
                ),
                shadows: [
                  BoxShadow(
                    color: Color.fromARGB(57, 255, 255, 255),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                    spreadRadius: 5,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'FINISH ',
                style: TextStyle(
                  color: Color(0xFF2BB231),
                  backgroundColor: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),

          
         Center(
  child: Container(
    margin: EdgeInsets.only(top: 400),
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
              color: Color(0xFFD27735),
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
            height: 30,
            child: Text(
              'High Intermediate',
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
              'Evaluate Grammar Page',
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
