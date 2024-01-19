import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemsSamples extends StatelessWidget {
  const CartItemsSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          for(int i = 1; i < 4; i++)
            Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Color(0xFF4C53A5),
                  onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(),
                  child: Image.asset("assets/images/$i.png"),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nom du produit", 
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold, 
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Text("50 Fcfa", 
                        style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold, 
                          color: Color(0xFF4C53A5),
                        ),
                      )
                    ]
                  ),
                ),
                // Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white, 
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), 
                                  spreadRadius: 1, 
                                  blurRadius: 10, 
                                ),
                              ]
                            ),
                            child: Icon(CupertinoIcons.plus, size : 18),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: const Text("01", 
                              style: TextStyle(
                                fontSize: 15, 
                                fontWeight: FontWeight.bold, 
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white, 
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), 
                                  spreadRadius: 1, 
                                  blurRadius: 10, 
                                ),
                              ]
                            ),
                            child: Icon(CupertinoIcons.minus, size : 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ],
    );
  }
}