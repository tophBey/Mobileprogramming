import 'package:belajar_flutter/UI/Poli_update.dart';
import 'package:belajar_flutter/poli.dart';
import 'package:flutter/material.dart';
import '../widget/sizeBar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beranda"),),
      drawer: SizeBar(),
      body: Center(child: Text("Selamat Datang")),
      // body: PoliPage(),
    );
  }
}