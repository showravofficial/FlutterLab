import 'package:flutter/material.dart';
import 'package:flutter_lab/FutureW.dart';
import 'package:flutter_lab/dialogW.dart';
import 'package:flutter_lab/new_std_dtl.dart';
import 'package:flutter_lab/sharedPf.dart';
import 'package:flutter_lab/sliverW.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NewStudentDetails(),
      ),
    );
  }
}
