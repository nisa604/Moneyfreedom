/**
 * @Author: Your name
 * @Date:   2023-02-09 22:08:55
 * @Last Modified by:   Your name
 * @Last Modified time: 2023-02-12 08:01:17
 */
import 'package:flutter/material.dart';
import 'package:moneyfreedom/pages/main.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
