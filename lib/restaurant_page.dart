import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: Text("Restaurant Fauzan"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            _logo(),
            Padding(padding: EdgeInsets.all(10)),
            _namaRestaurant(),
            Padding(padding: EdgeInsets.all(10)),
            _buttonHome(context),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      child: Column(
        children: [
          Image.network(
              "https://pbs.twimg.com/profile_images/1246790118737768449/tgv8T4uo_400x400.jpg",
              width: 100),
        ],
      ),
    );
  }

  Widget _namaRestaurant() {
    return Container(
      child: Column(
        children: [
          Text("Selamat Datang di Restaurant Fauzan"),
        ],
      ),
    );
  }

  Widget _buttonHome(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple.shade300),
            ),
            child: Text("Home"),
          ),
        ],
      ),
    );
  }
}
