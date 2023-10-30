import 'package:flutter/material.dart';
import 'package:flutter_basic_app/form_page/form_flutter.dart';
// import 'package:flutter_basic_app/homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FormFlutter(
          // title: 'Deskripsi Kucing',
          ),
    );
  }
}