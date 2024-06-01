import 'package:flutter/material.dart';
import 'package:toefl_app/pages/learning_grammar/subject_and_verb_aggrement.dart';
import 'package:toefl_app/pages/learning_listening.dart/materi.dart/home_materi.dart';
import 'package:toefl_app/pages/menu_page/dasboard.dart';
import 'package:toefl_app/pages/start_home/start_home.dart';

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
      home: StartHome(),
    );
  }
}
