import 'package:flutter/material.dart';
import 'package:toefl_app/model/learning_reading.dart';
import 'package:toefl_app/pages/learning_reading.dart/model_learning_reading.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MateriLearningReadingPage extends StatefulWidget {
  @override
  _MateriLearningReadingPageState createState() =>
      _MateriLearningReadingPageState();
}

class _MateriLearningReadingPageState extends State<MateriLearningReadingPage> {
  late Future<List<MaterIReading>> futureMateri;

  @override
  void initState() {
    super.initState();
    futureMateri = fetchMateriReading();
  }

  Future<List<MaterIReading>> fetchMateriReading() async {
    final response = await http.get(
        Uri.parse('https://test-toefl.kerissumenep.com/api/materiReading'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> payload = data['payload'];
      return MaterIReading.fromJsonList(payload);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Image.asset(
            'images/pens_remBG.png',
            height: 50,
          ),
        ],
      ),
      body: FutureBuilder<List<MaterIReading>>(
        future: futureMateri,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || snapshot.data == null) {
            return Center(child: Text('Error: Failed to load data'));
          } else if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: snapshot.data!.map((materi) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ModelLearningReadingPages(
                              materiList: snapshot.data!,
                              initialIndex: snapshot.data!.indexOf(materi),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 80.19,
                              top: 22,
                              child: SizedBox(
                                width: 150,
                                child: Text(
                                  materi.title,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Fugaz One',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 23,
                              child: Container(
                                width: 29,
                                height: 31,
                                child: Image.asset(
                                  'images/next.png',
                                  height: 30,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15.97,
                              top: 20,
                              child: Container(
                                width: 40,
                                height: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  'images/learning_reading.jpg',
                                  height: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          } else {
            return Center(child: Text('No data found'));
          }
        },
      ),
    );
  }
}
