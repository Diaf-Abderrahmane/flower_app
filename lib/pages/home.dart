// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flower_app/shared%20widgets/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "HOME",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: valRed,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            Stack(children: [
              Container(
                child: Text("8",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: valBlue, shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Text(
                "\$13",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
