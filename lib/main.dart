import 'package:flutter/material.dart';
import 'package:toefl_app/pages/learning_grammar/grammar_dashboard.dart';
import 'package:toefl_app/pages/learning_grammar/subject_and_verb_aggrement.dart';
import 'package:toefl_app/pages/learning_grammar/the_simple_present_tense.dart';
import 'package:toefl_app/pages/learning_listening.dart/materi.dart/home_materi.dart';
import 'package:toefl_app/pages/learning_reading.dart/home_learning_reading.dart';
import 'package:toefl_app/pages/test_grammar/home_test_grammar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomeLearningReadingPages(),

      // debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // home: the_simle_present_tensePage(),

      //   debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // home: the_simle_present_tensePage(),

      // debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // home: HomeMateriPages(),
    );
  }
}
