import 'package:flutter/material.dart';
import 'package:nufake/screens/home.dart';
import 'package:nufake/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nu Fake',
      theme: appTheme,
      home: Home(),
    );
  }
}
