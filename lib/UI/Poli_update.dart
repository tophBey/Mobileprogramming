import 'package:belajar_flutter/model/poli.dart';
import 'package:flutter/material.dart';
import 'poli_detail.dart';

class PoliUpdate extends StatefulWidget {
  final PoliPoli poli;
  const PoliUpdate({Key? key, required this.poli}) : super(key: key);

  @override
  State<PoliUpdate> createState() => _PoliUpdateState();
}

class _PoliUpdateState extends State<PoliUpdate> {
  final _formkey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tambah poli")),
      body: SingleChildScrollView(
          child: Form(
        key: _formkey,
        child: Column(children: [
          // TextField(decoration: const InputDecoration(labelText: "Nama Poli")),
          _fieldNamaPoli(),
          SizedBox(
            height: 30,
          ),
          // ElevatedButton(onPressed: () {}, child: Text("Simpan"))
          _tombolSimpan()
        ]),
      )),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: InputDecoration(labelText: "NamaPoli"),
      controller: _namaPoliCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          PoliPoli poli = PoliPoli(namapoli: _namaPoliCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: Text("Simpan Perubahan"));
  }
}
