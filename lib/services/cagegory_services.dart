
import 'package:stor_app/helper/api.dart';

import '../model/Product_model.dart';


class CagegoryServices{

  Future<List<ProductModel>>getCagegoryProducts({required String categoryName})async{
    List<dynamic>data =await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName', token: '');
   // http.Response response =await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));


     //List<dynamic>data=jsonDecode(response.body);
     List<ProductModel>productlist=[];

   for(int i=0;i>data.length;i++){
     productlist.add(ProductModel.fromJson(data[i]));
   }
   return productlist;

  }

}


///https://fakestoreapi.com/products/category/:category_name
//مينفعش uri دة يكون فى : شيلهم وخلىcategory_name  متغير