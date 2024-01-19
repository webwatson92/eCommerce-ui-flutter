import 'package:abeyah_app/pages/CartPage.dart';
import 'package:abeyah_app/utils/coloors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Coloors.principalColor,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "ABEYAH",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Coloors.principalColor,
              ),
            ),
          ),
          Spacer(),
          Badge(
            backgroundColor: Colors.red,
            padding: EdgeInsets.all(7),
            // badgeContent: Text(
            //   "3",
            // ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.blue, // Utilisation de la bonne variable pour la couleur
              ),
            ),
          ),
        ],
      ),
    );
  }
}
