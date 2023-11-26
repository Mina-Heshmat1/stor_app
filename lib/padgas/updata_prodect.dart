import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stor_app/model/Product_model.dart';
import 'package:stor_app/services/put_proudect.dart';
import 'package:stor_app/widget/costom_icon_botton.dart';
import 'package:stor_app/widget/custome_text_feild.dart';

class upDataProdectPage extends StatefulWidget {
  upDataProdectPage({super.key});

  static String id = 'upDataProdect';

  @override
  State<upDataProdectPage> createState() => _upDataProdectPageState();
}

class _upDataProdectPageState extends State<upDataProdectPage> {
  String? productName, des, image;
  num? price;
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    SizedBox height = const SizedBox(
      height: 10,
    );
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'UPData Prodect',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              customeTextField(
                icon: Icons.room_preferences,
                hintText: 'Product Name ',
                onChanged: (data) {
                  productName = data;
                },
                isPassword: false,
                isEmail: true,
              ),
              height,
              customeTextField(
                icon: Icons.pending_actions,
                hintText: 'Descriptions',
                onChanged: (data) {
                  des = data;
                },
                isPassword: false,
                isEmail: true,
              ),
              height,
              customeTextField(
                icon: Icons.price_change_outlined,
                inputtayp: TextInputType.number,
                hintText: 'price',
                onChanged: (data) {
                  price = double.parse(data);
                },
                isPassword: false,
                isEmail: true,
              ),
              height,
              customeTextField(
                icon: Icons.image,
                hintText: 'Image',
                onChanged: (data) {
                  image = data;
                },
                isPassword: false,
                isEmail: true,
              ),
              SizedBox(
                height: 30,
              ),
              costomIconBotton(
                text: 'Updata',
                onTap: () async {
                  isLoding = true;
                  setState(() {
                    
                  });

                  try {
                    await updataProdect(product);
                  } on Exception catch (e) {}
                  isLoding = false;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updataProdect(ProductModel product) async {
    await UpdateProductServices().updateProduct(
      id:product.id!.toString(),
      title: productName == null ? product.title! : productName!,
      price: price  ?? product.price!,
      description: des == null ? product.description! : des!,
      image: image == null ? product.image! : image!,
      category: product.category!,
    );
  }
}
