import 'package:abeyah_app/utils/coloors.dart';
import 'package:abeyah_app/widgets/CartAppBar.dart';
import 'package:abeyah_app/widgets/CartBottomNavBar.dart';
import 'package:abeyah_app/widgets/CartItemsSamples.dart';
import 'package:flutter/material.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          CartAppBar(),

          Container(
            height: 560,
            padding: EdgeInsets.only(top: 5),
            decoration: const BoxDecoration(
              color: Coloors.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child:  Column(
                children: [
                  CartItemsSamples(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF4C53A5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(Icons.add, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal:10),
                          child: Text("Ajouter le code coupon", 
                            style: TextStyle(
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                
                ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}