import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ContohSoalLearningReading extends StatefulWidget {
  final String fileUrl;

  const ContohSoalLearningReading({Key? key, required this.fileUrl}) : super(key: key);

  @override
  _ContohSoalLearningReadingState createState() => _ContohSoalLearningReadingState();
}

class _ContohSoalLearningReadingState extends State<ContohSoalLearningReading> {
  late String imagePath;
  late Future<List<String>> futureImageUrls;

  @override
  void initState() {
    super.initState();
    futureImageUrls = fetchImageUrls();
  }

  Future<void> fetchImage() async {
    try {
      final String fileUrl = widget.fileUrl;

      if (fileUrl.isNotEmpty) {
        final response = await http.get(Uri.parse(fileUrl));

        if (response.statusCode == 200) {
          final bytes = response.bodyBytes;
          final dir = await getApplicationDocumentsDirectory();
          final fileName = fileUrl.split('/').last;
          final file = File('${dir.path}/$fileName');
          await file.writeAsBytes(bytes, flush: true);
          setState(() {
            imagePath = file.path;
          });
        } else {
          print('Failed to load image');
        }
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<List<String>> fetchImageUrls() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.1.14:8000/materiReading'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> imageUrls = data['imageUrls'];
        return imageUrls.map((url) => url.toString()).toList();
      } else {
        throw Exception('Failed to load image URLs');
      }
    } catch (e) {
      print('Error: $e');
      return [];
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
                child: Image.asset(
                  'images/pens_remBG.png',
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      body: imagePath == null
          ? Center(child: CircularProgressIndicator())
          : Image.file(File(imagePath)),
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
          children: const [
            Text(
              'Learning Reading TOEFL',
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
