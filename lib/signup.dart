import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/login.dart';
import 'package:flutterapp/userprofile.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sigup"),
      ),
      body: Container(
        child:
        Form(
          key: formKey,
          child: Column(
            children: [
              Text("Sigup Screen"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: username,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val){
                    return val!.isEmpty?"Please Enter username":null;
                  },
                  decoration: InputDecoration(
                    hintText: "Please Enter username",
                    labelText: "username",
                    border: OutlineInputBorder()
                  ),
                ),
              ),  Padding(
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
                    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
                    User user = userCredential.user!;
                    if(user!=null){
                    await  FirebaseFirestore.instance.collection("users").doc(user.uid).set(
                          {
                            "email":email.text,
                            "password":password.text,
                            "uid":user.uid,
                            "username":username.text
                          });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Userprofile()));
                    }

                  } on FirebaseAuthException catch(e){
                    print(e.message);
                    if(e!.toString().contains("email-already-in-use")){
                      print("User Already created");
                    }
                  }

                catch(e){
                    print(e);
                  }

                }
              }, child: Text("Sigup")),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Text("move to login Page"))
            ],
          ),
        ),
      ),
    );
  }
}
