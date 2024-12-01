
import 'package:flutter/material.dart';

import '../services/products.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Products"),),
      body: FutureBuilder(
        future: Products().get(),
        builder: (context, products){
          return products.hasData?ListView.builder(
              itemCount: products.data!.length,
              itemBuilder: (context,index){
            return ListTile(
              leading: Image.network(products.data![index].image!),
              title: Text(products.data![index].title!),
              subtitle: Text(products.data![index].description!),
              trailing: Text(products.data![index].price.toString()),
            );
          }):Center(child: CircularProgressIndicator(),);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Products().update();
        },
        child: Text("+"),
      ),
    );
  }
}
