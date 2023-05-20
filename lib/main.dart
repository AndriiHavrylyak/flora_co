import 'package:flutter/material.dart';

import 'features/main/pages/main_page.dart';

void main() {
  runApp(const FloraCoApp());
}

class FloraCoApp extends StatelessWidget {
  const FloraCoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloraCo  App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
