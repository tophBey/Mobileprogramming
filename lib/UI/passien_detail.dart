import 'package:flutter/material.dart';
import '../model/Pasien.dart';

class PassienDetail extends StatefulWidget {
  final Passien id_passien;
  final Passien no_rmPassien;
  final Passien nama_passien;
  final Passien tanggal_lahirPassien;
  final Passien nomor_teleponPassien;
  final Passien alamat_passien;
  const PassienDetail(
      {super.key,
      required this.id_passien,
      required this.no_rmPassien,
      required this.nama_passien,
      required this.tanggal_lahirPassien,
      required this.nomor_teleponPassien,
      required this.alamat_passien});

  @override
  State<PassienDetail> createState() => _PassienDetailState();
}

class _PassienDetailState extends State<PassienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail passien"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("Id Passien            :  ${widget.id_passien.id}"),
            Text("Nomor_rm Passien      :  ${widget.no_rmPassien.nomor_rm}"),
            Text("Nama Passien          :  ${widget.nama_passien.nama}"),
            Text("Tanggal lahir Passien :  ${widget.tanggal_lahirPassien.tanggal_lahir}"),
            Text("Alamat Passien        :  ${widget.alamat_passien.alamat}"),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(onPressed: () {}, child: Text("Ubah")),
              ElevatedButton(onPressed: () {}, child: Text("Hapus")),
            ],)
          ],
        ));
  }
}
