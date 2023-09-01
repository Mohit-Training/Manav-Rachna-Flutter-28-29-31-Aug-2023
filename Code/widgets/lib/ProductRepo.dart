import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:widgets/ProductModal.dart';

class ProductRepo {
  ProductRepo._() {}
  static getProductRepoInstance() { //singleton
    ProductRepo productRepo = ProductRepo._();
    return productRepo;
  }

  getProducts(Function onSucess, Function onFailure) {
    var url = Uri.parse('https://audio-player-wli3.onrender.com/getProducts');
    var response = http.get(url);
    response.then((value) {
      print(value.body);
      Map map = jsonDecode(value.body);
      List list = map['productsList'];
      List<Product> products = list
          .map((e) => Product(
              costPrice: e['costPrice'],
              description: e['description'],
              imgUrl: e['imgUrl'],
              name: e['name'],
              sellingPrice: e['sellingPrice']))
          .toList();
      onSucess(products);
    }).catchError((err) {
      print(err.toString());
      onFailure(err.toString());
    });
  }

  Future<List<Product>> getProducts2() async {
    Uri uri = Uri.parse('https://audio-player-wli3.onrender.com/getProducts');
    http.Response response = await http.get(uri);
    Map map = jsonDecode(response.body);
    List list = map['productsList'];
    List<Product> products = list
        .map((e) => Product(
            costPrice: e['costPrice'],
            description: e['description'],
            imgUrl: e['imgUrl'],
            name: e['name'],
            sellingPrice: e['sellingPrice']))
        .toList();
    return products;
  }
}
