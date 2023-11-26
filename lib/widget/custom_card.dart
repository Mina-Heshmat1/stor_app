/*
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:stor_app/padgas/updata_prodect.dart';
import 'package:stor_app/widget/favorite_page.dart';

import '../model/Product_model.dart';

class CustomCard extends StatefulWidget {
   CustomCard({
    super.key, required this.product,
  });

  ProductModel product;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior:Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  //blurStyle: BlurStyle.solid,
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 20,
                  offset: const Offset(1,1),
                )
              ]
          ),
          child:  Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(widget.product.title!.substring(0,10),style: const TextStyle(color: Colors.grey,fontSize: 16), ),
                  const SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ ${widget.product.price}',style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold), ),
                       Row(
                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context,upDataProdectPage.id,arguments:widget.product );
                              },
                              child: const Icon(Icons.update_rounded,color: Colors.black,)),
                          const SizedBox(width: 8,),
                          FavoriteButton(
                            iconSize:40,
                            isFavorite: isFavorite,
                              valueChanged:(value){
                              setState(() {
                                isFavorite = value;
                                addToFavorites(); // Add the current product to favorites
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FavoriteScreen(favoriteProducts: favoriteProducts),
                                  ),
                                );

                              });
                              },
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),


        Positioned(
          left: 70,
          top: -55,
          //bottom: 65,
          child: Image.network(widget.product.image!,
            height: 120,
            width: 90,
          ),
        ),
      ],
    );
  }
}

// List to store favorite products


List<ProductModel> favoriteProducts = [];*/


import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:stor_app/padgas/updata_prodect.dart';
import 'package:stor_app/widget/favorite_page.dart';

import '../model/Product_model.dart';

class CustomCard extends StatefulWidget {
  CustomCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;

  void addToFavorites() {
    if (!favoriteProducts.contains(widget.product)) {
      favoriteProducts.add(widget.product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset: const Offset(1, 1),
              )
            ],
          ),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title!.substring(0, 10),
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ ${widget.product.price}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                upDataProdectPage.id,
                                arguments: widget.product,
                              );
                            },
                            child: const Icon(Icons.update_rounded, color: Colors.black),
                          ),
                          const SizedBox(width: 8,),
                          FavoriteButton(
                            iconSize: 40,
                            isFavorite: isFavorite,
                            valueChanged: (value) {
                              setState(() {
                                isFavorite = value;
                                addToFavorites(); // Add the current product to favorites
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FavoriteScreen(favoriteProducts: favoriteProducts),
                                  ),
                                );
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 70,
          top: -55,
          child: Image.network(
            widget.product.image!,
            height: 120,
            width: 90,
          ),
        ),
      ],
    );
  }
}

// List to store favorite products
List<ProductModel> favoriteProducts = [];