// import 'package:belajar_flutter/colum_widget.dart';
// import 'package:belajar_flutter/row_widget.dart';
import 'package:belajar_flutter/UI/beranda.dart';
import 'package:flutter/material.dart';
// import 'colum_widget.dart';
// import 'row_widget.dart';
// import 'baris_kolom.dart';
import 'poli.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhamad Arif',
      home:   Beranda(),
    );
  }
}
