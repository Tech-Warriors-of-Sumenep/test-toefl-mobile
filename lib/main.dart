import 'package:flutter/material.dart';
import 'package:toefl_app/pages/learning_grammar/grammar_dashboard.dart';
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
      home: grammarDashboard(),
    );
  }
}
