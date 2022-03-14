import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis1_tpm/nota_page.dart';

class BayarPage extends StatelessWidget {
  final String nama;
  final String gambar;
  final String harga;
  final String deskripsi;

  const BayarPage({Key? key,
    required this.gambar,
    required this.deskripsi,
    required this.harga,
    required this.nama})
      : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text('Pesanan Anda'),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _isiCard(),
            _caption(),
            _bayar(context),
          ],
        ),
      ),
    );
  }

  Widget _isiCard() {
    return InkWell(
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(gambar, width: 120),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              nama,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _caption() {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        top: 20,
        right: 40,
        bottom: 20,
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Text(deskripsi),
          const Padding(padding: EdgeInsets.all(10)),
          Text("Harga :" + harga),
        ],
      ),
    );
  }

  Widget _bayar(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50)),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple.shade300),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NotaPage(
                  Nota: harga);
            }));
          },

          child: const Text('Bayar'),
        ),
      ],
    );
  }

}