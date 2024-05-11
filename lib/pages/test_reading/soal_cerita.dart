import 'package:flutter/material.dart';
import 'package:toefl_app/pages/test_reading/latihan.dart';

class SoalPages extends StatefulWidget {
  const SoalPages({Key? key}) : super(key: key);

  @override
  State<SoalPages> createState() => _SoalPagesState();
}

class _SoalPagesState extends State<SoalPages> {
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
      body: Center(
        child: Stack(
          children: [
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
                  children: const [
                    Text(
                      'Test Reading Page',
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




 Center(
        child: Align(
    alignment: Alignment(0, -0.9), // Sesuaikan nilai untuk mengatur posisi vertikal
  
    child: Container(
      width: 350,
      height: 590,
     
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(4, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
    width: 350,
    child: Text(
      'Reading Passage 1\n',
      textAlign: TextAlign.center, 
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
      ),
    ),
  ),

               SizedBox(
  width: 300,
  height: 40,
  child: Text(
    '\t\tThe Power of Sleep',
    style: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
  ),
),
SizedBox(
  width: 340,
  height: 460,
  child: Padding(
    padding: EdgeInsets.only(left: 10), // Adjust the left padding as needed
    child: Text(
      'Sleep is crucial for our health and well-being as it impacts various aspects of our lives. During sleep, the body repairs tissues, regulates hormones, and consolidates memories. Adequate sleep enhances concentration, problem-solving, and decision-making skills. Conversely, sleep deprivation leads to decreased productivity and increased risk of accidents.\n   Emotionally, lack of sleep causes mood swings and stress, while sufficient sleep helps manage emotions and cope with daily challenges. Physically, sleep strengthens the immune system, reduces chronic disease risks, and aids in weight management. It also improves athletic performance and recovery. Prioritizing good sleep habits, like a consistent schedule and a relaxing bedtime routine, is essential for reaping sleep\'s benefits and enhancing overall quality of life.',
      textAlign: TextAlign.justify, 
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
      overflow: TextOverflow.visible,
    ),
  ),
),


              ],
            ),
          ),
        ],
      ),
    ),
  ),
),

Stack(
  children: [
    // Widgets lain di dalam Stack
    Positioned(
      right: 15,
      top: 610, // Ubah sesuai kebutuhan
      child: GestureDetector(
        onTap: () {
          // Navigasi ke halaman lain
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => latihanpages()),
          );
        },
        child: Container(
          width: 100,
          height: 28,
          child: Stack(
            children: [
              Container(
                width: 100,
                height: 28,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A6DCE),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3F000000),
                      blurRadius: 3,
                      offset: const Offset(0, 0),
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 15,
                top: 1,
                child: SizedBox(
                  width: 100,
                  height: 27,
                  child: const Text(
                    'Question',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ],
),



          ],
        ),
      ),
    );
  }
}
