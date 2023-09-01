//ListView.Builder, ListTile, Divider
import 'package:flutter/material.dart';

import '../ProductModal.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});
  List<Product> productsList = [
    Product(
        costPrice: 19000,
        description: "12GB RAM, 256 GB Storage",
        imgUrl:
            'https://d2xamzlzrdbdbn.cloudfront.net/products/713d32fb-b11e-4818-b854-72e04bcfc6a422300542.jpg',
        name: 'Realme GT Neo 3',
        sellingPrice: 26000),
    Product(
        costPrice: 17000,
        description: '8GB RAM, 128 GB Storage',
        imgUrl:
            'https://img6.gadgetsnow.com/gd/images/products/additional/large/G307073_View_1/mobiles/smartphones/realme-gt-neo-2-128-gb-neo-blue-8-gb-ram-.jpg',
        name: 'Realme GT Neo 2',
        sellingPrice: 25000),
    Product(
        costPrice: 18000,
        description: '6GB RAM, 128 GB Storage',
        imgUrl:
            'https://m.media-amazon.com/images/I/51LOXKT+vvL._AC_UL480_QL65_.jpg',
        name: 'IQOO 7',
        sellingPrice: 26000),
    Product(
        costPrice: 22000,
        description: '12 GB RAM, 1TB Storage',
        imgUrl: 'https://m.media-amazon.com/images/I/81ZV6G2iRrL._SX679_.jpg',
        name: 'Realme Narzo 60 Pro',
        sellingPrice: 29999),
    Product(
        costPrice: 16000,
        description: '8GB RAM 256GB Storage',
        imgUrl: 'https://m.media-amazon.com/images/I/81eoabezOsL._SX679_.jpg',
        name: 'Realme 11 Pro 5G',
        sellingPrice: 24588),
    Product(
        costPrice: 23000,
        description: '8GB RAM, 128GB Storage',
        imgUrl:
            'https://m.media-amazon.com/images/I/812yohjGZ2L._AC_UY327_FMwebp_QL65_.jpg',
        name: 'Samsung Galaxy S20 FE 5G',
        sellingPrice: 29999),
    Product(
        costPrice: 20000,
        description: '8GB RAM, 128 GB Storage',
        imgUrl:
            'https://m.media-amazon.com/images/I/61IiuWQcVjL._AC_UY327_FMwebp_QL65_.jpg',
        name: 'IQOO Neo 7 5G',
        sellingPrice: 27999),
    Product(
        costPrice: 19000,
        description: "12GB RAM, 256 GB Storage",
        imgUrl:
            'https://d2xamzlzrdbdbn.cloudfront.net/products/713d32fb-b11e-4818-b854-72e04bcfc6a422300542.jpg',
        name: 'Realme GT Neo 3',
        sellingPrice: 26000),
    Product(
        costPrice: 17000,
        description: '8GB RAM, 128 GB Storage',
        imgUrl:
            'https://img6.gadgetsnow.com/gd/images/products/additional/large/G307073_View_1/mobiles/smartphones/realme-gt-neo-2-128-gb-neo-blue-8-gb-ram-.jpg',
        name: 'Realme GT Neo 2',
        sellingPrice: 25000),
    Product(
        costPrice: 18000,
        description: '6GB RAM, 128 GB Storage',
        imgUrl:
            'https://m.media-amazon.com/images/I/51LOXKT+vvL._AC_UL480_QL65_.jpg',
        name: 'IQOO 7',
        sellingPrice: 26000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
          itemCount: productsList.length,
          itemBuilder: (context, index) => ListTile(
                onTap: () {
                  print("Product is ${productsList[index].name}");
                },
                leading: Container(
                    width: 70,
                    padding: EdgeInsets.symmetric(vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue)),
                    child: Image.network(productsList[index].imgUrl)),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    productsList[index].name,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productsList[index].description,
                        style: TextStyle(fontSize: 16)),
                    Text("Price : ${productsList[index].sellingPrice}",
                        style: TextStyle(fontSize: 16))
                  ],
                ),
              )),
    );
  }
}
