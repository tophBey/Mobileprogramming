import 'package:belajar_flutter/model/poli.dart';
import 'package:flutter/material.dart';
import 'poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  State<PoliForm> createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
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
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: Text("Simpan"));
  }
}
