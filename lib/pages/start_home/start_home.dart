import 'package:flutter/material.dart';
import 'package:toefl_app/pages/menu_page/navigasi.dart';
class StartHome extends StatefulWidget {
  @override
  _StartHomeState createState() => _StartHomeState();
}

class _StartHomeState extends State<StartHome> {
  @override
  void initState() {
    super.initState();
    // Menjalankan perpindahan halaman setelah 3 detik
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()), // Ganti NextPage() dengan halaman berikutnya
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Container(
         
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/start_page.png'), // Ganti 'your_image.jpg' dengan path gambar Anda
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('Ini adalah halaman berikutnya setelah 3 detik.'),
      ),
    );
  }
}
