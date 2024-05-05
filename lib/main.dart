import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:toefl_app/pages/learning_listening.dart/contoh_soal.dart/short_conversation.dart';
import 'package:toefl_app/pages/learning_reading.dart/home_learning_reading.dart';
=======
//import 'package:toefl_app/pages/learning_listening.dart/contoh_soal.dart/short_conversation.dart';
>>>>>>> Stashed changes
import 'package:toefl_app/pages/test_grammar/home_test_grammar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< Updated upstream
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeLearningReadingPages());
=======
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeTestGrammarPages(),
    );
>>>>>>> Stashed changes
  }
}
