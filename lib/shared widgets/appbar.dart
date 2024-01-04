// ignore_for_file: prefer_const_constructors

import 'package:flower_app/cart.dart';
import 'package:flower_app/pages/checkout.dart';
import 'package:flower_app/shared%20widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Row(children: [
      Stack(children: [
        Container(
          child: Text("${cart.flowersInCart.length}"),
          // Text(,
          //     style: TextStyle(color: Colors.white, fontSize: 16)
          //     ),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(color: valBlue, shape: BoxShape.circle),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckOut()));
              },
              icon: Icon(Icons.add_shopping_cart)),
        )
      ]),
      Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Text(
          "\$${cart.totalPrice}",
          style: TextStyle(fontSize: 16),
        ),
      ),
    ]);
  }
}
