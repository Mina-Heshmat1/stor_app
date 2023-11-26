

import '../helper/api.dart';

class AllCategoriesServices{
  
  Future<List<dynamic>>getAllCategoriesServices()async{
    List<dynamic>data= await Api().get(url: 'https://fakestoreapi.com/products/categories');
    //http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));


     // List<dynamic>data= jsonDecode(response.body);

      return data;

  }

}