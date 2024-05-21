import 'package:flutter/material.dart';
import 'package:toefl_app/model/learning_reading.dart';
import 'package:toefl_app/pages/learning_reading.dart/contoh_soal_learning_reading.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ModelLearningReadingPages extends StatefulWidget {
  const ModelLearningReadingPages({Key? key}) : super(key: key);

  @override
  State<ModelLearningReadingPages> createState() => _ModelLearningReadingPagesState();
}

class _ModelLearningReadingPagesState extends State<ModelLearningReadingPages> {
  late Future<List<materIReading>> futureMateri;

  @override
  void initState() {
    super.initState();
    futureMateri = fetchMaterIReading();
  }

  Future<List<materIReading>> fetchMaterIReading() async {
    final response = await http.get(Uri.parse('http://10.251.12.16:8000/api/materiReading'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> payload = data['payload'];
      return materIReading.fromJsonList(payload);
    } else {
      throw Exception('Failed to load data');
    }
  }

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
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset('images/pens_remBG.png', height: 50),
              ),
            ],
          ),
        ),
      ),
      body: FutureBuilder<List<materIReading>>(
        future: futureMateri,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final materi = snapshot.data![index];
                return ListTile(
                  title: Text(materi.title),
                  subtitle: Text(materi.description),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearningReadingPage(materiList: snapshot.data!),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return Center(child: Text('No data found'));
          }
        },
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
              'Learning Reading TOEFL',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Your function here
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LearningReadingPage extends StatelessWidget {
  const LearningReadingPage({Key? key, required this.materiList}) : super(key: key);

  final List<materIReading> materiList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Reading'),
      ),
      body: ListView.builder(
        itemCount: materiList.length,
        itemBuilder: (context, index) {
          final materi = materiList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  materi.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: const Color(0xFF020052),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  materi.description,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
