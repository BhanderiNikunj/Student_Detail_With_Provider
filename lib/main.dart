import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_detail_with_provider/Screen/HomeScreen/Provider/StudentDetailProvider.dart';
import 'package:student_detail_with_provider/Screen/HomeScreen/View/HomePage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DetailProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Student_Detail(),
        },
      ),
    ),
  );
}
