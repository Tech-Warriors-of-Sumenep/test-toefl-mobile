import 'package:flutter/material.dart';
import 'package:toefl_app/pages/test_listening/exit_card.dart';

class listening extends StatefulWidget {
  const listening({super.key});

  @override
  State<listening> createState() => _listeningState();
}

class _listeningState extends State<listening> {
  double _currentSliderValue = 0.0;
  bool _isPlaying = false;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20), // Spacer
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0), // Jarak ke kiri
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 85, // Sesuaikan dengan kebutuhan Anda
                    height: 40, // Sesuaikan dengan kebutuhan Anda
                    color: Colors.grey[
                        300], // Atur warna latar belakang sesuai kebutuhan
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '10:02',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 395,
                  decoration: BoxDecoration(
                    color: Colors
                        .grey[300], // Memberikan latar belakang warna abu-abu
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Stack(
                          children: [
                            if (!_isPlaying)
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Tambahkan logika untuk memulai atau melanjutkan pemutaran di sini
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          child: Center(
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.grey,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (_isPlaying)
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  ),
                                ),
                              ),
                            Icon(
                              _isPlaying ? Icons.pause : Icons.play_arrow,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _isPlaying = !_isPlaying;
                          });
                        },
                      ),
                      Expanded(
                        child: Slider(
                          value: _currentSliderValue,
                          min: 0,
                          max: 100,
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                          activeColor: Colors.white,
                          inactiveColor: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20.0), // Jarak ke kiri
                        child: Text(
                          '00.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Listen: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '2 plays left',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 400,
              padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
              margin: EdgeInsets.all(10), // Atur margin sesuai kebutuhan Anda
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang card
                border: Border.all(
                  color: Colors.grey, // Warna border
                ),
                borderRadius:
                    BorderRadius.circular(10), // Mengatur sudut border
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(4, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            8.0, 10.0, 8.0, 0), // Mengurangi padding di atas
                        child: Text(
                          'Question 1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ), // Menambahkan jarak antara teks pertama dan teks kedua
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            8.0, 0, 8.0, 8.0), // Mengurangi padding di atas
                        child: Text(
                          'What does the man say about Sterling Watson?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.5,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ), // Menambahkan jarak antara teks pertanyaan dan pilihan
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '[A] He is required to read one of his books ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'but does not like this writing.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '[B] He has never read any of his works',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'previously.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '[C] He appreciates his writting style.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '[D] He learned about his books form a',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'computer.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
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
        height: kToolbarHeight + 35,
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Text(
                    'Test Listening Page',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ExitCard()), // Pindah ke ModelMateriPages
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
