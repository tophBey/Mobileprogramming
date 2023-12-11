import 'package:flutter/material.dart';
import 'poli_detail.dart';
import '../model/poli.dart';

class PoliItem extends StatelessWidget {
  final PoliPoli poli;

  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(title: Text("${poli.namapoli}")),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
    );
  }
}
