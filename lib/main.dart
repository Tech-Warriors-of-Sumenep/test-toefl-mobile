import 'package:flutter/material.dart';
//import 'package:toefl_app/pages/learning_reading.dart/home_learning_reading.dart';
import 'package:toefl_app/pages/test_grammar/home_test_grammar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // home: const HomeLearningReadingPages(),
      
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomeTestGrammarPages(),
    );
  }
}
