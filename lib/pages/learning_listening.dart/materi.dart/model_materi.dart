import 'package:flutter/material.dart';
import 'model_materi2.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ModelMateriPages extends StatefulWidget {
  const ModelMateriPages({Key? key}) : super(key: key);

  @override
  State<ModelMateriPages> createState() => _ModelMateriPagesState();
}

class _ModelMateriPagesState extends State<ModelMateriPages> {
  String title = '';
  String description = '';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(
          Uri.parse('https://test-toefl.kerissumenep.com/api/MateriListening'));

      if (response.statusCode == 200) {
        final responseBody = response.body;
        final data = json.decode(responseBody);
        final payload = data['payload'][0];

        setState(() {
          title = payload['title'] ?? 'Title not available';
          description = payload['description'] ?? 'Description not available';
        });
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching data: $error');
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
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  'images/pens_remBG.png',
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 22.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
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
              'Learning Listening TOEFL',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ModelMateri2Pages()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
