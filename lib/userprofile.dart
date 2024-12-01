import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

//create (set({})), read all, read specific, Delete , update

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Profile"),

      actions: [ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AllUser()));
      }, child: Text("All Users"))],),
      // body: StreamBuilder(
      //   stream: FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid).snapshots(),
     body: FutureBuilder(
          future: FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid).get(),
          builder: (context, snapshot) {
          return snapshot.hasData? Column(
            children: [
              InkWell(
                  onTap: ()async{
                   final image = await ImagePicker().pickImage(source: ImageSource.gallery);
                   if(image!=null){

                     print("---1");
                     // File imageFile = File(image.path);
                     // print(imageFile);
                     Uint8List imageData = await image.readAsBytes();
                     // Create a storage reference from our app
                     final storageRef = FirebaseStorage.instance.ref();

                      // Create a reference to "mountains.jpg"
                     final mountainsRef = storageRef.child("images").child("${image.path.split('/').last}");
                     print(mountainsRef);

                     TaskSnapshot taskSnapshot =  await mountainsRef.putData(imageData);
                     print("---2");

                     print(mountainsRef);

                     final fileUrl = await taskSnapshot.ref.getDownloadURL();
                     print(fileUrl);
                     print("---3");

                     await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser?.uid).update(
                         {"image":fileUrl});
                     setState(() {

                     });
                   }
                   else{
                     print("image not found");
                   }
                  },
                  child: CircleAvatar(backgroundImage: NetworkImage(snapshot.data!.data()!.containsKey("image")?snapshot.data!["image"]:""),)),

              Text("${snapshot.data!["username"]??"user not login"}"),
              Text("${snapshot.data!["email"]??"user not login"}"),
              Text("${snapshot.data!["password"]??"user not login"}"),
              Text("${snapshot.data!["uid"]??"user not login"}"),
              ElevatedButton(onPressed: ()async{
                await FirebaseAuth.instance.signOut();
                await GoogleSignIn().signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));

              }, child:Text("Loggout"))
            ],
          ):Center(child: CircularProgressIndicator(),);
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
