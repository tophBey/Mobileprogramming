import 'package:belajar_flutter/poli.dart';
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'Poli_update.dart';

class PoliDetail extends StatefulWidget {
  final PoliPoli poli;
  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Poli")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Nama Poli ${widget.poli.namapoli}",
            style: const TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ElevatedButton(onPressed: () {}, child: const Text("Ubah")),
              _tombolUbah(), _tombolHapus()
              // ElevatedButton(onPressed: () {}, child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliUpdate(poli: widget.poli)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green[400]),
        child: Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin mau dihapus"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PoliPage()));
                },
                child: Text("Ya"),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.red[800]),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Batal"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
        child: Text("Hapus"));
  }
}
