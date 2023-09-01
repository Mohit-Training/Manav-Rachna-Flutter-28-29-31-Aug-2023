//FutureBuilder, StreamBuilder
import 'package:flutter/material.dart';
import 'package:widgets/ProductRepo.dart';

import '../ProductModal.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  final ProductRepo _productRepo = ProductRepo.getProductRepoInstance();
  List<Product> productsList = [];
  bool isFailed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _productRepo.getProducts(onSuucess, onFailure);
  }

  onSuucess(List<Product> products) {
    productsList = products;
    setState(() {});
  }

  onFailure(String error) {
    isFailed = true;
    print(error);
    setState(() {});
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: SafeArea(
  //           child: productsList.isEmpty
  //               ? isFailed
  //                   ? Center(
  //                       child: Text('Some Error has Occurred'),
  //                     )
  //                   : Center(
  //                       child: Text('Loading...'),
  //                     )
  //               : ListView.builder(
  //                   itemCount: productsList.length,
  //                   itemBuilder: (context, index) => ListTile(
  //                         onTap: () {
  //                           print("Product is ${productsList[index].name}");
  //                         },
  //                         leading: Container(
  //                             width: 70,
  //                             padding: EdgeInsets.symmetric(vertical: 2),
  //                             decoration: BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(5),
  //                                 border: Border.all(color: Colors.blue)),
  //                             child: Image.network(productsList[index].imgUrl)),
  //                         title: Padding(
  //                           padding: const EdgeInsets.symmetric(vertical: 8.0),
  //                           child: Text(
  //                             productsList[index].name,
  //                             style: TextStyle(
  //                                 fontSize: 17, fontWeight: FontWeight.w500),
  //                           ),
  //                         ),
  //                         subtitle: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(productsList[index].description,
  //                                 style: TextStyle(fontSize: 16)),
  //                             Text(
  //                                 "Price : ${productsList[index].sellingPrice}",
  //                                 style: TextStyle(fontSize: 16))
  //                           ],
  //                         ),
  //                       ))));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
        future: _productRepo.getProducts2(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Some Error has Occurred"),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Product> productsList = snapshot.data!;
            return ListView.builder(
                itemCount: productsList.length,
                itemBuilder: (context, index) => ListTile(
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
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
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
                    ));
          }
        },
      )),
    );
  }
}
