import 'package:flutter/material.dart';
import 'dasboard.dart';
import 'kategori.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MenuPage(),
    kategoripage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              height: kToolbarHeight + 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _onItemTapped(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_outlined,
                          size: 25,
                          color: _selectedIndex == 0
                              ? Color(0xFF0A0099)
                              : Colors
                                  .grey, // Ubah warna ikon sesuai dengan indeks terpilih
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? Color(0xFF0A0099)
                                : Colors
                                    .grey, // Ubah warna teks sesuai dengan indeks terpilih
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _onItemTapped(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.workspaces_outlined,
                          size: 25,
                          color: _selectedIndex == 1
                              ? Color(0xFF0A0099)
                              : Colors
                                  .grey, // Ubah warna ikon sesuai dengan indeks terpilih
                        ),
                        Text(
                          'Kategori',
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? Color(0xFF0A0099)
                                : Colors
                                    .grey, // Ubah warna teks sesuai dengan indeks terpilih
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
