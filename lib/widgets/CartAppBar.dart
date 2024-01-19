import 'package:abeyah_app/pages/CartPage.dart';
import 'package:abeyah_app/pages/homepage.dart';
import 'package:abeyah_app/utils/coloors.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, size: 30, color: Coloors.principalColor),

        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Cart",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5),
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.more_vert,
          size: 30,
          color: Color(0xFF4C53A5),
        )
      ]),
    );
  }
}