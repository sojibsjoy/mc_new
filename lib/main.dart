import 'package:flutter/material.dart';
import 'package:master_cooking/pages/home.dart';
// import 'package:master_cooking/pages/profile.dart';
// import 'package:master_cooking/pages/reviews.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
      },
    ),
  );
}
