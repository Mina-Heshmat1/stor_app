import 'package:stor_app/helper/api.dart';
import 'package:stor_app/model/Product_post_dto.dart';

import '../model/Product_model.dart';

class UpdateProductServices {
  Future<ProductPutDTO> updateProduct({
    required String title,
    required num price,
    required String description,
    required String image,
    required String id,
    required String category,
  }) async {
    print('product id =$id');
    Map<String, dynamic> data = await Api().put(
      Url: 'https://fakestoreapi.com/products/$id',
      body: {
        'id': id,
        'title': title,
        'price': price.toString(),
        'description': description,
        'image': image,
        'category': category,
      },
      token: 'token',
    );
    return ProductPutDTO.fromJson(data);
  }
}
