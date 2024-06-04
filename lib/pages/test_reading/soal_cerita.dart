// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:toefl_app/pages/test_reading/latihan.dart';

// int _startTime = DateTime.now().millisecondsSinceEpoch;
// int _currentTime = DateTime.now().millisecondsSinceEpoch;

// class SoalPages extends StatefulWidget {
//   const SoalPages({Key? key}) : super(key: key);

//   @override
//   State<SoalPages> createState() => _SoalPagesState();
// }

// class _SoalPagesState extends State<SoalPages> {
//   late Future<List<Map<String, dynamic>>> _futureReading;


//   @override
//   void initState() {
//     super.initState();

//     _futureReading = fetchReadingQuestions();
//      _startTime = DateTime.now().millisecondsSinceEpoch;
//     _currentTime = _startTime;
//   }




//   @override
//   void dispose() {

//     super.dispose();
//   }

//   Future<List<Map<String, dynamic>>> fetchReadingQuestions() async {
//     final response =
//         await http.get(Uri.parse('http://192.168.1.209:8000/api/ujian-reading'));

//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body)['payload'];
//       return List<Map<String, dynamic>>.from(data);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(kToolbarHeight + 10),
//         child: Container(
//           decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 spreadRadius: 0,
//                 blurRadius: 4,
//                 offset: const Offset(0, 4),
//               ),
//             ],
//           ),
//           child: AppBar(
//             leading: Padding(
//               padding: const EdgeInsets.only(left: 17.0),
//               child: IconButton(
//                 icon: const Icon(
//                   Icons.arrow_back,
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ),
//             actions: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 27.0),
//                 child: Image.asset(
//                   'images/pens_remBG.png',
//                   height: 50,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Center(
//         child: FutureBuilder<List<Map<String, dynamic>>>(
//           future: _futureReading,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               final readingData = snapshot.data![0];
//               return Stack(
//                 children: [
//                   Positioned(
//                     left: 0,
//                     right: 0,
//                     bottom: 0,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(15),
//                           topRight: Radius.circular(15),
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 5,
//                             blurRadius: 7,
//                             offset: const Offset(0, -3),
//                           ),
//                         ],
//                       ),
//                       height: kToolbarHeight + 10,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Text(
//                             'Test Reading Page',
//                             style: TextStyle(
//                               color: Color.fromARGB(255, 14, 13, 13),
//                               fontSize: 20,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: Align(
//                       alignment: Alignment(0, -0.7),
//                       child: Container(
//                         width: 350,
//                         height: 490,
//                         child: Stack(
//                           children: [
//                             Positioned.fill(
//                               child: Container(
//                                 decoration: ShapeDecoration(
//                                   color: Colors.white,
//                                   shape: RoundedRectangleBorder(
//                                     side: BorderSide(
//                                       width: 1,
//                                       color: Colors.black.withOpacity(0.2),
//                                     ),
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   shadows: [
//                                     BoxShadow(
//                                       color: const Color(0x3F000000),
//                                       blurRadius: 4,
//                                       offset: const Offset(4, 4),
//                                       spreadRadius: 0,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Center(
//                               child: SingleChildScrollView(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(
//                                       width: double.infinity,
//                                       child: Text(
//                                         readingData['title'] ?? '',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 20,
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 340,
//                                       child: Padding(
//                                         padding: EdgeInsets.only(left: 10),
//                                         child: Text(
//                                           readingData['description'] ?? '',
//                                           textAlign: TextAlign.justify,
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 15,
//                                             fontFamily: 'Poppins',
//                                             fontWeight: FontWeight.w400,
//                                           ),
//                                           overflow: TextOverflow.visible,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     right: 15,
//                     top: 560,
//                     child: GestureDetector(
//                       onTap: () {
//                        Navigator.push(
//   context,
//   MaterialPageRoute(
//     builder: (context) => LatihanPages(),
//     settings: RouteSettings(arguments: _startTime),
//   ),
// );

//                       },
//                       child: Container(
//                         width: 100,
//                         height: 28,
//                         child: Stack(
//                           children: [
//                             Container(
//                               width: 100,
//                               height: 28,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFF1A6DCE),
//                                 borderRadius: BorderRadius.circular(20),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(0x3F000000),
//                                     blurRadius: 3,
//                                     offset: const Offset(0, 0),
//                                     spreadRadius: 1,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Positioned(
//                               left: 15,
//                               top: 1,
//                               child: SizedBox(
//                                 width: 100,
//                                 height: 27,
//                                 child: const Text(
//                                   'Question',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 15,
//                                     fontFamily: 'Poppins',
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
                 
                  
//                 ],
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }