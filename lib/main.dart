import 'package:flutter/material.dart';
import 'package:flutter_e_learning/pages/root_app.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'WorkSans'
    ),
    debugShowCheckedModeBanner: false,
    home: const RootApp(),
  ));
}

