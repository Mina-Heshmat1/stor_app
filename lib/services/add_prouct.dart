
import 'package:stor_app/helper/api.dart';

import '../model/Product_model.dart';


class AddProuct{

  Future<ProductModel>addProuct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category})async{
    Map<String,dynamic>data=await Api().post(
        Url: 'https://fakestoreapi.com/products',
        body: {
          'title': title,
          'price': price,
          'description':description,
          'image':image,
          'category': category,
        },
        token: 'token',
    ) ;
  return ProductModel.fromJson(data);
  }
}

