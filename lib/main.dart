// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'pages/auth_page.dart';
import 'package:pylearnplay/theory/theory_6.dart';
import 'package:pylearnplay/lessons/pythonpage1.dart';
import 'package:pylearnplay/lessons/pythonpage3.dart';
import 'package:pylearnplay/lessons/pythonpage4.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PyLearnPlay',
      home: PythonPage1(),
    );
  }
}
