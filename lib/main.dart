import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const ScholarshipApp());
}

class ScholarshipApp extends StatelessWidget {
  const ScholarshipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scholarship Management App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        appBarTheme: const AppBarTheme(centerTitle: true),
      ),
      home: const HomeScreen(),
    );
  }
}