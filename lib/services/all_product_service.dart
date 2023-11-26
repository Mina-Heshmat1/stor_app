import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stor_app/helper/api.dart';

import '../model/Product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
//http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products'));

    //List<dynamic>data=jsonDecode(response.body);

    List<ProductModel> prodectList = [];

    for (int i = 0; i < data.length; i++) {
      prodectList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return prodectList;
  }
}

/*

// Old Code
class AllProductService{
  Future<List<ProductModel>>getAllProducts()async{

    http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if(response.statusCode==200){
      List<dynamic>data=jsonDecode(response.body);

      List<ProductModel>prodectList=[];

      for(int i =0 ; i>data.length; i++){
        prodectList.add(ProductModel.fromjson(data[i]));
      }
      return prodectList;
    }else{
      throw Exception('There is a problem With statusCode ${response.statusCode} ');
    }
  }
}*/
