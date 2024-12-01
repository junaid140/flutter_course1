import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/signup.dart';
import 'package:flutterapp/userprofile.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                   UserCredential userCredential =await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);

                   User user = userCredential.user!;
                   if(user!=null){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Userprofile()));
                   }

                  } on FirebaseAuthException catch(e){
                    print(e.message);
                    print(e);
                    if(e.code=="invalid-credential"){
                      print("User not exist please create a new");
                    }
                    // if(e!.toString().contains("email-already-in-use")){
                    //   print("User Already created");
                    // }
                  }

                  catch(e){
                    print(e);
                  }

                }
              }, child: Text("Sigup")),
              ElevatedButton(onPressed: ()async{
                final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

                if(googleUser!=null){
                  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
                  // Create a new credential.
                  final oAuthCredential = GoogleAuthProvider.credential(
                    accessToken: googleAuth.accessToken,
                    idToken: googleAuth.idToken,
                  );

                  UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(oAuthCredential);

                  User user = userCredential.user!;
                  if(user!=null){
                   final usersData =  await  FirebaseFirestore.instance.collection("users").doc(user.uid).get();
                 if(usersData.exists ){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Userprofile()));
                 }
                 else{

                   await  FirebaseFirestore.instance.collection("users").doc(user.uid).set(
                       {
                         "email":googleUser.email,
                         "password":"",
                         "uid":user.uid,
                         "username":googleUser.displayName
                       });
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Userprofile()));
                 }
                  }
                }
                else{
                  print("User not Login");
                }
              }, child: Text("Sign In with Google")),
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
