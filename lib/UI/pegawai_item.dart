import 'package:flutter/material.dart';
import '../model/Pegawai.dart';
import 'P&P_Detail.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai id;
  final Pegawai nip;
  final Pegawai nama;
  final Pegawai tanggal_lahir;
  final Pegawai nomor_telepon;
  final Pegawai email;
  final Pegawai password;
  const PegawaiItem({super.key,
        required this.id,
        required this.nip,
        required this.nama,
        required this.tanggal_lahir,
        required this.nomor_telepon,
        required this.email,
        required this.password
  
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(title: Text("Pegawai")),
      ),
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Detail_Pegawain(
              id_pegawai: id,
              nip_pegawai: nip,
              nama_pegawai: nama,
              ttl_pegawai: tanggal_lahir,
              nomor_Telepon_pegawai: nomor_telepon,
              email_pegawai: email,
              password_pegawai: password,
            
            )));
      },
      
    );
  }
}
