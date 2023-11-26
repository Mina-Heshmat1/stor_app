// favorite_screen.dart

import 'package:flutter/material.dart';
import 'package:stor_app/widget/custom_card.dart';
import '../model/Product_model.dart';

class FavoriteScreen extends StatelessWidget {
  final List<ProductModel> favoriteProducts;

  const FavoriteScreen({
    Key? key,
    required this.favoriteProducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (context, index) {
          return  GridView.builder(
            
            clipBehavior: Clip.none,
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 60,
            ),
            itemBuilder: (context,index){
              return  CustomCard(product: favoriteProducts[index],);
            },);
        },
      ),
    );
  }
}