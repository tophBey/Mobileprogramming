import 'package:belajar_flutter/UI/login.dart';
import 'package:belajar_flutter/poli.dart';
import 'package:flutter/material.dart';
import '../UI/beranda.dart';

class SizeBar extends StatelessWidget {
  const SizeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admid@gmail.com")),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("Beranda"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beranda()));
              }),
          ListTile(
              leading: Icon(Icons.accessible),
              title: Text("Poli"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PoliPage()));
              }),
          ListTile(
              leading: Icon(Icons.people),
              title: Text("Pegawai"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: Text("Passien"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.people),
              title: Text("Keluar"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                    (Route<dynamic> route) => false);
              }),
        ],
      ),
    );
  }
}
