import 'package:flutter/material.dart';
import '../model/Pegawai.dart';

class Detail_Pegawain extends StatefulWidget {
  final Pegawai id_pegawai;
  final Pegawai nip_pegawai;
  final Pegawai nama_pegawai;
  final Pegawai ttl_pegawai;
  final Pegawai nomor_Telepon_pegawai;
  final Pegawai email_pegawai;
  final Pegawai password_pegawai;
  const Detail_Pegawain(
      {super.key,
      required this.id_pegawai,
      required this.nip_pegawai,
      required this.nama_pegawai,
      required this.ttl_pegawai,
      required this.nomor_Telepon_pegawai,
      required this.email_pegawai,
      required this.password_pegawai});

  @override
  State<Detail_Pegawain> createState() => _Detail_PegawainState();
}

class _Detail_PegawainState extends State<Detail_Pegawain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pegawai")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            "ID Pegawai\t: ${widget.id_pegawai.id}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pegawai \t: ${widget.nama_pegawai.nama}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir\t:${widget.ttl_pegawai.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "No Telepon\t: ${widget.nomor_Telepon_pegawai.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Email Pegawai\t: ${widget.email_pegawai.email}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Password Pegawai\t: ${widget.password_pegawai.password}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Ubah")),
              ElevatedButton(onPressed: () {}, child: Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
