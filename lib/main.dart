import 'package:flutter/material.dart';
import 'package:my_first_project/lesson_6.dart';

import 'home_page.dart';

void main(){
  runApp(const ExplorerMotvationApplication());
}

class ExplorerMotvationApplication extends StatelessWidget {
  const ExplorerMotvationApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      home: LessonSix(),
      debugShowCheckedModeBanner: false,
    );
  }
}
