import 'package:feedback_screen/tela.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FeedbackScreen());
}

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      home: const Tela(),
    );
  }
}
