
import 'dart:convert';

import 'package:flutterapp/const/api_urls.dart';
import 'package:flutterapp/models/product.dart';
import 'package:http/http.dart' as http;

class Products {

  add()async{

    final response = await http.post(Uri.parse(ApiUrls.products),body: json.encode({
      "title": 'test productn bhjktyj',
      "price": 13.5,
      "description": 'lorem ipsum set gnvnv fgvhngn',
      "image": 'https://i.pravatar.cc',
      "category": 'electronic'
    }));
    var product=  json.decode(response.body);
    print(product);

  }  update()async{

    final response = await http.put(Uri.parse(ApiUrls.products+"/7"),body: json.encode({
      "title": 'test productn bhjktyj',
      "price": 13.5,
      "description": 'lorem ipsum set gnvnv fgvhngn',
      "image": 'https://i.pravatar.cc',
      "category": 'electronic'
    }));
    var product=  json.decode(response.body);
    print(response.body);
    print(product);

  }

  Future<List<Product>> get()async{

   final response = await http.get(Uri.parse(ApiUrls.products));
   print(response.body);
  var productsList=  json.decode(response.body);
  try {
    List products = productsList.toList();
    List<Product> productsData = products.map((product)=> Product.fromJson(product)).toList();
    // print(productsList);
    return productsData;
  }catch(e){
    print(e);
    return [];
  }


  }



}