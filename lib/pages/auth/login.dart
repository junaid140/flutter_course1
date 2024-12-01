import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/signup.dart';
import 'package:flutterapp/userprofile.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../services/auth_services.dart';
import 'profile.dart';

class LoginByApis extends StatefulWidget {
  const LoginByApis({super.key});

  @override
  State<LoginByApis> createState() => _LoginByApisState();
}

class _LoginByApisState extends State<LoginByApis> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child:
        Form(
          key: formKey,
          child: Column(
            children: [
              Text("Login Screen"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val){
                    return val!.isEmpty?"Please Enter email":null;
                  },
                  decoration: InputDecoration(
                      hintText: "Please Enter email address",
                      labelText: "Email address",
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val){
                    return val!.isEmpty?"Please Enter email":val.length<6?"Please enter password greater then 6 digit":null;
                  },
                  decoration: InputDecoration(
                      hintText: "Please Enter password",
                      labelText: "Password",
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              ElevatedButton(onPressed: ()async{
                if(formKey.currentState!.validate()){
                  print(email.text);
                  print(password.text);
                  try{
                    final response = await AuthServices().login(email.text, password.text);

                    if(response.statusCode==200){
                      var body=  json.decode(response.body);
                      print(body);
                      if(body["success"]){
                        await AuthServices().saveToken(body["data"]["token"]);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserprofilePage()));

                      }

                    }
                    else{
                      var body=  json.decode(response.body);
                      print(body);

                      print("${body["data"]["message"]}");

                    }

                  }
                  catch(e){
                    print(e);
                  }

                }
              }, child: Text("Login")),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));

                  },
                  child: Text("Create SignUp Page"))
            ],
          ),
        ),
      ),
    );
  }
}
