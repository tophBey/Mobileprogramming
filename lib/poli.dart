import 'package:belajar_flutter/UI/P&P_Detail.dart';
import 'package:belajar_flutter/UI/passien_detail.dart';
import 'package:belajar_flutter/UI/poli_form.dart';
import 'package:flutter/material.dart';
import 'model/poli.dart';
// import 'UI/poli_detail.dart';
import 'model/Pegawai.dart';
import 'model/Pasien.dart';
import 'UI/poli_item.dart';
// import 'UI/pegawai_item.dart';
import 'widget/sizeBar.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _MyaplikasiState();
}

class _MyaplikasiState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizeBar(),
      appBar: AppBar(
        title: Text("Poli anak"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          // card pertama
          PoliItem(poli: PoliPoli(namapoli: "Poli Anak")),
          // card kedua
          PoliItem(poli: PoliPoli(namapoli: "Poli Kandungan")),
          // card ke3
          PoliItem(poli: PoliPoli(namapoli: "Poli Gigi")),

          // card  ke 4
          PoliItem(poli: PoliPoli(namapoli: "Poli Tht")),

          // PegawaiItem(id: Pegawai(id: 10), nip: "17210", nama: "Muhamad Arif", tanggal_lahir: tanggal_lahir, nomor_telepon: nomor_telepon, email: email, password: password),

          // card ke 5
          GestureDetector(
            child: Card(
                child: ListTile(
              title: const Text("Pegawai"),
            )),
            onTap: () {
              Pegawai pegawainama = Pegawai(
                  id: 3,
                  nip: "90",
                  nama: "Muhamad Arif",
                  tanggal_lahir: "17/17/2017",
                  nomor_telepon: "0808080808",
                  email: "contoh@gmail.com",
                  password: "xxxxxx");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail_Pegawain(
                            id_pegawai: pegawainama,
                            nip_pegawai: pegawainama,
                            nama_pegawai: pegawainama,
                            ttl_pegawai: pegawainama,
                            nomor_Telepon_pegawai: pegawainama,
                            email_pegawai: pegawainama,
                            password_pegawai: pegawainama,
                          )));
            },
          ),

          // card ke 5
          GestureDetector(
            child: Card(
                child: ListTile(
              title: const Text("Passien"),
            )),
            onTap: () {
              Passien passien = Passien(
                  id: 4,
                  nomor_rm: "304",
                  nama: "Seseorang",
                  tanggal_lahir: "12/12/2012",
                  nomor_telepon: "0808080808",
                  alamat: "Jalan raya Bikini Bottem");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PassienDetail(
                            id_passien: passien,
                            no_rmPassien: passien,
                            nama_passien: passien,
                            tanggal_lahirPassien: passien,
                            nomor_teleponPassien: passien,
                            alamat_passien: passien,
                          )));
            },
          ),
        ],
      ),
    );
  }
}
