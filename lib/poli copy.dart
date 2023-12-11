// import 'package:belajar_flutter/UI/P&P_Detail.dart';
// import 'package:belajar_flutter/UI/passien_detail.dart';
// import 'package:flutter/material.dart';
// import 'model/poli.dart';
// import 'UI/poli_detail.dart';
// import 'model/Pegawai.dart';
// import 'model/Pasien.dart';

// class PoliPage extends StatefulWidget {
//   const PoliPage({super.key});

//   @override
//   State<PoliPage> createState() => _MyaplikasiState();
// }

// class _MyaplikasiState extends State<PoliPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Poli anak")),
//       body: ListView(
//         children: [
//           // card pertama

//           GestureDetector(
//             child: Card(
//                 child: ListTile(
//               title: const Text("Poli anak"),
//             )),
//             onTap: () {
//               PoliPoli polianak = PoliPoli(namapoli: "Poli anak");
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PoliDetail(poli: polianak)));
//             },
//           ),
//           // card ke 2
//           GestureDetector(
//             child: Card(
//                 child: ListTile(
//               title: const Text("Poli kandungan"),
//             )),
//             onTap: () {
//               PoliPoli polikandungan = PoliPoli(namapoli: "Poli Kandungan");
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PoliDetail(poli: polikandungan)));
//             },
//           ),

//           GestureDetector(
//             child: Card(
//                 child: ListTile(
//               title: const Text("Poli Gigi"),
//             )),
//             onTap: () {
//               PoliPoli poligigi = PoliPoli(namapoli: "Poli Gigi");
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PoliDetail(poli: poligigi)));
//             },
//           ),
//           // card ke 3
//           GestureDetector(
//             child: Card(
//                 child: ListTile(
//               title: const Text("Poli THT"),
//             )),
//             onTap: () {
//               PoliPoli poliTht = PoliPoli(namapoli: "Poli THT");
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PoliDetail(poli: poliTht)));
//             },
//           ),

//           // card ke 4
//           GestureDetector(
//             child: Card(
//                 child: ListTile(
//               title: const Text("Pegawai"),
//             )),
//             onTap: () {
//               Pegawai pegawainama = Pegawai(
//                   id: 3,
//                   nip: "90",
//                   nama: "Muhamad Arif",
//                   tanggal_lahir: "17/17/2017",
//                   nomor_telepon: "0808080808",
//                   email: "contoh@gmail.com",
//                   password: "xxxxxx");
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => Detail_Pegawain(
//                             id_pegawai: pegawainama,
//                             nama_pegawai: pegawainama,
//                             ttl_pegawai: pegawainama,
//                             nomor_Telepon_pegawai: pegawainama,
//                             email_pegawai: pegawainama,
//                             password_pegawai: pegawainama,
//                           )));
//             },
//           ),

//           // card ke 5
//           GestureDetector(
//             child: Card(
//                 child: ListTile(
//               title: const Text("Passien"),
//             )),
//             onTap: () {
//               Passien passien = Passien (
//                 id: 4,
//                 nomor_rm: "304",
//                 nama: "Seseorang",
//                 tanggal_lahir: "12/12/2012",
//                 nomor_telepon: "0808080808",
//                 alamat: "Jalan raya Bikini Bottem" );
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => PassienDetail(
//                         id_passien: passien,
//                         no_rmPassien: passien,
//                         nama_passien: passien,
//                         tanggal_lahirPassien: passien,
//                         nomor_teleponPassien: passien,
//                         alamat_passien: passien,)));
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
