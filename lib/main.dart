import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/cunter_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: counter_view(),
    );
  }
}
