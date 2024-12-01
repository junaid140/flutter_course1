import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/login.dart';
import 'package:flutterapp/services/auth_services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

//create (set({})), read all, read specific, Delete , update

class UserprofilePage extends StatefulWidget {
  const UserprofilePage({super.key});

  @override
  State<UserprofilePage> createState() => _UserprofilePageState();
}

class _UserprofilePageState extends State<UserprofilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Profile By API"),),
     // body: StreamBuilder(
      //   stream: FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid).snapshots(),
      body: FutureBuilder(
          future: AuthServices().getProfile(),
          builder: (context, snapshot) {
            if(snapshot.hasData){

              if(snapshot.data.statusCode==200){
                var body=  json.decode(snapshot.data.body);

                var userProfile = body["data"]["doc"];
                return Column(children: [
                  Text("First Name: ${userProfile["firstName"]}"),
                  Text("last Name: ${userProfile["lastName"]}"),
                  Text("Email: ${userProfile["email"]}"),
                  Text("Phone: ${userProfile["phone"]}")

                ],);
              }else{
                return Container(child: Text(""),);
              }
            }
            else{
              return Center(child: CircularProgressIndicator(),);
            }

          }
      ),
    );
  }
}

class AllUser extends StatefulWidget {
  const AllUser({super.key});

  @override
  State<AllUser> createState() => _AllUserState();
}

class _AllUserState extends State<AllUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Users"),),
      // body: StreamBuilder(
      //   stream: FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid).snapshots(),
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection("users").orderBy("email",).get(),
          builder: (context, snapshot) {
            return snapshot.hasData? ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text("${snapshot.data!.docs[index]["email"]}"),
                    subtitle: Column(
                      children: [
                        Text("${snapshot.data!.docs[index]["username"]}"),
                        Text("${snapshot.data!.docs[index]["uid"]}"),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(icon: Icon(Icons.edit),onPressed: ()async{
                          await  FirebaseFirestore.instance.collection("users").doc(snapshot.data!.docs[index].id).update(
                              {
                                "username":"junaid2"
                              });
                          setState(() {

                          });
                        },),
                        IconButton(icon: Icon(Icons.delete),onPressed: ()async{
                          await  FirebaseFirestore.instance.collection("users").doc(snapshot.data!.docs[index].id).delete();
                          setState(() {

                          });
                        },),
                      ],
                    ),
                  );
                }):Center(child: CircularProgressIndicator(),);
          }
      ),
    );
  }
}
