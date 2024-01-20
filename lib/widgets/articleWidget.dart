import 'package:abeyah_app/pages/ItemPage.dart';
import 'package:abeyah_app/utils/coloors.dart';
import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio : 0.68,
      //it disable the scroll functionality of gridview
      //then it will scroll in list view of on page
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i = 1; i < 8; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue, // Utilisation de la bonne variable pour la couleur
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border, 
                      color: Colors.red,
                    )
              ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ItemPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Image.asset("assets/images/$i.png", 
                    height: 110, 
                    width: 110,
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.only(bottom: 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Nom produit",
                  style: TextStyle(
                    fontSize: 18,
                    color: Coloors.principalColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text('la description', 
                style: TextStyle(
                    fontSize:15,
                    color: Coloors.principalColor
                ),),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("5500 Fcfa", 
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Coloors.principalColor,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout, 
                      color: Coloors.principalColor,
                    ),
                  ],
                ),
              )
            ],
          ),
      )

      ],
    );
  }
}