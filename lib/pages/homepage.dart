import 'package:abeyah_app/utils/coloors.dart';
import 'package:abeyah_app/widgets/HomeAppBar.dart';
import 'package:abeyah_app/widgets/articleWidget.dart';
import 'package:abeyah_app/widgets/categoriewidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft : Radius.circular(35),
              topRight : Radius.circular(35),
            ),
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Rechercher une maison...",
                    ),
                  ),
                ),
                Spacer(),
                const Icon(
                  Icons.camera_alt, size: 27, color: Coloors.principalColor,),
              ],),
            ),
            //catégories
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric( vertical: 20, horizontal: 10),
              child: const Text("Catégories", style: TextStyle(
                        fontSize: 25, 
                        fontWeight: FontWeight.bold, 
                        color: Coloors.principalColor),
                      ),
            ),
            CategoriesWidget(),

            //Les articles
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text('Meilleurs vente', style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Coloors.principalColor,
                ),),
            ),
            ArticleWidget(),
          ]),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(//plug pour la bar de navigation animate
        onTap: (index){},
        color: Coloors.principalColor,
        height: 70,
        backgroundColor: Colors.transparent,
        items:const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ]
      ),
    );
  }
}