import 'package:flutter/material.dart';
import 'package:stor_app/model/Product_model.dart';
import 'package:stor_app/widget/custom_card.dart';
import 'package:stor_app/padgas/updata_prodect.dart';
import 'package:stor_app/padgas/wifi_lotty.dart';
import 'package:stor_app/services/all_product_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     /* appBar: AppBar(
        backgroundColor: Colors.white,
        actions:  [
          IconButton(
            onPressed: (){
            },
            icon: const Icon(Icons.add_shopping_cart_outlined,color: Colors.black,),
          )
        ],
        elevation: 0,
        centerTitle: true,
        title: const Text('New Trend',style:TextStyle(color: Colors.black),),
      ),*/
      body:Padding(
        padding: const EdgeInsets.only(right: 16,left: 16,top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProducts(),
          builder: (context,snapshot){
            print(snapshot);
           if(snapshot.hasData){
             List<ProductModel>prodect=snapshot.data!;
             return GridView.builder(
               itemCount: prodect.length,
                 clipBehavior: Clip.none,
                 gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: 1.3,
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 60,
                 ),
                 itemBuilder: (context,index){
                   return  CustomCard(product: prodect[index],);
                 },);
           }else{
             return  Center(child: wifipadges());
           }
          },
        )
      )
    );
  }
}


