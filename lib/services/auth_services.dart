
import 'dart:convert';

import 'package:flutterapp/const/api_urls.dart';
import 'package:flutterapp/models/product.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {

 Future<http.Response> login(email,password)async{

    final response = await http.post(Uri.parse(ApiUrls.loginUrl),body: json.encode({
      "email": email,
      "password": password
    }),
    headers: {
      "Content-Type": "application/json"
    }
    );
    return response;


  }
  register()async{

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

  Future getProfile()async{

   final token = await getToken();
   final response = await http.get(Uri.parse(ApiUrls.userProfileUrl),headers: {
     "Content-Type": "application/json",
     "Authorization": "Bearer $token"
   });

    return response;

  }

 Future saveToken(String token)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<String> getToken()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   final token =  prefs.getString('token')??"";
   return token;
  }



}