import 'package:flutter/material.dart';
import 'package:kuis1_tpm/bayar_page.dart';

import 'menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Home Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataMenu = getAllMenu();

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataMenu[index], context);
      },
      itemCount: dataMenu.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(Menu data, BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BayarPage(
                gambar: data.image,
                nama: data.name,
                harga: data.price.toString(),
                deskripsi:data.desc);
          }));
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(data.image),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.name)),
            ),
          ],
        ),
      ),
    );
  }
}