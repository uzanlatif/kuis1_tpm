import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotaPage extends StatelessWidget {
  final String Nota;
  const NotaPage({Key? key,required this.Nota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: Text("Nota Pembayaran"),
      ),
      body: Container(
        child: Column(children: [
          _notaPembelian(),
        ],),
      ),
    );
  }

  Widget _notaPembelian(){
  return Card(
    child: Column(
      children: [
        Text("Silahkan Membayar Kekasir Sebesar",
        style: TextStyle(
          fontSize: 30,
        ),
        ),
        Text(Nota,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ],
    ),
  );
  }
}
