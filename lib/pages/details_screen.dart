// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flower_app/model/item.dart';
import 'package:flower_app/shared%20widgets/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item item;
  Details({required this.item, super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/img/${widget.item.imgUrl}"),
            SizedBox(
              height: 11,
            ),
            Text(
              "\$ 12.99",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                      color: valBlue, borderRadius: BorderRadius.circular(10)),
                  child: Text("New", style: TextStyle(fontSize: 16)),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amber,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Flower Shop",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                "Details : ",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),
            Text(
              "Flower is from the Middle English flour, which referred to both the ground grain and the reproductive structure in plants, before splitting off in the 17th century. It comes originally from the Latin name of the Italian goddess of flowers, Flora., Flower is from the Middle English flour, which referred to both the ground grain and the reproductive structure in plants, before splitting off in the 17th century. It comes originally from the Latin name of the Italian goddess of flowers, Flora.Flower is from the Middle English flour, which referred to both the ground grain and the reproductive structure in plants, before splitting off in the 17th century. It comes originally from the Latin name of the Italian goddess of flowers, Flora.",
              maxLines: isShowMore ? null : 3,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(isShowMore ? "Show Less" : "Show More"))
          ],
        ),
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
              decoration: BoxDecoration(color: valBlue, shape: BoxShape.circle),
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
    );
  }
}
