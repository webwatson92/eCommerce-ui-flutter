import 'package:abeyah_app/widgets/ItemAppBar.dart';
import 'package:abeyah_app/widgets/ItemBottomNavBar.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget {

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.indigo,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("assets/images/1.png", height: 280,),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:40, bottom: 15),
                      child: Row(
                        children: [
                          Text('Titre produit', 
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5)
                            ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20, 
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 105, 107, 130),
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5), 
                                decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(50), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), 
                                      spreadRadius: 3, 
                                      blurRadius: 10, 
                                      offset: Offset(0, 3),
                                    ),
                                  ]
                                ),
                                child: Icon(CupertinoIcons.minus, size: 18,),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("01", 
                                  style: TextStyle(
                                    color: Color(0xFF4C53A5),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5), 
                                decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(50), 
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), 
                                      spreadRadius: 3, 
                                      blurRadius: 10, 
                                      offset: Offset(0, 3),
                                    ),
                                  ]
                                ),
                                child: Icon(CupertinoIcons.add, size: 18,),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10), 
                      child: Text("tenetur deserunt ratione ullam quaerat excepturi natus praesentium esse blanditiis pariatur odit modi.", 
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10), 
                      child: Row(
                        children: [
                          Text('Size:', style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              for(int i=5; i<10; i++)
                                Container(
                                height: 30, 
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2, 
                                      blurRadius: 8,
                                    )
                                  ]
                                ),
                                child: Text(
                                  i.toString(), style: TextStyle(
                                    fontSize: 18, 
                                    fontWeight: FontWeight.bold, 
                                    color: Color(0xFF4C53A5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 10), 
                      child: Row(
                        children: [
                          const Text('Couleur:', style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold,
                          ),),
                          const SizedBox(width: 10,),
                          Row(
                            children: [
                              for(int i=0; i<5; i++)
                                Container(
                                  height: 30, 
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: colors[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2, 
                                        blurRadius: 8,
                                      )
                                    ]
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}