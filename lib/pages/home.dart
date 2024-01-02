// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flower_app/shared%20widgets/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img/neon.jpg"),
                              fit: BoxFit.cover)),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/img/my_picture.jpg"),
                      ),
                      accountEmail: Text("ja_diaf@esi.dz"),
                      accountName: Text(
                        "Abderrahmane Diaf",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {},
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Developed By Diaf Abderrahmane 2024",
                      style: TextStyle(fontSize: 14),
                    ))
              ]),
        ),
        appBar: AppBar(
          title: Text(
            "HOME",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: valRed,
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
