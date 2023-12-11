import 'package:flutter/material.dart';

class ColomAndRoW extends StatelessWidget {
  const ColomAndRoW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris Dan Kolom"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          //kolom pertama
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Baris 1, Kolom 1 ',
                // style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Text('Kolom 1'),
              SizedBox(height: 25), 
              Text('Baris 2 kolom 1'),
              SizedBox(height: 25), 
              Text('Baris 3 kolom 1'),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Baris 1, Kolom 2 '),
              SizedBox(height: 25), 
              Text('Baris 2, Kolom 2 '),
              SizedBox(height: 25), 
              Text('Baris 3, Kolom 2 '),
              // Text('Kolom 2'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Baris 1, Kolom 3 '),
              SizedBox(height: 25), 
              Text('Baris 2, Kolom 3 '),
              SizedBox(height: 25), 
              Text('Baris 3, Kolom 3 '),
              // Text('Kolom 3')
            ],
          ),
        ],
      ),
    );
  }
}
