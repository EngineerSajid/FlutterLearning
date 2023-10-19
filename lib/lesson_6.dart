import 'package:flutter/material.dart';

class LessonSix extends StatefulWidget {
  const LessonSix({super.key});

  @override
  State<LessonSix> createState() => _LessonSixState();
}

class _LessonSixState extends State<LessonSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("I Learn Flutter"),
      ),
    );
  }
}
