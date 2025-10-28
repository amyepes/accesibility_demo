import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const BadExampleApp());
}

class BadExampleApp extends StatelessWidget {
  const BadExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bad Accessibility Example',
      theme: ThemeData.dark(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
