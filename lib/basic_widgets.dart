//ListTile
//CircularAvatar
//Image
//Buttons, Navigation

//Multi child Widgets, Row, Column, Wrap, Stack, ListView, GridView

// Button, ElevatedButton, OutlineButton, IconButton, TextButton, FloatingActionButton
// InkWell, GestureDetector, ListTile

import 'package:flutter/material.dart';
import 'package:flutterapp/next_page.dart';
class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Widgets"),backgroundColor: Colors.blueAccent,
      actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    // color: Colors.grey,
                  ),
                  child:
                  GestureDetector(
                    onTap: (){
                      print("object");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,width: 200,child: Text("Hey Flutter"),color: Colors.grey,),
                  )


              ),
              OutlinedButton(
                onPressed: (){
                  print("object Value");
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NextPage()));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                },
                child: Text("Login"),),
              ElevatedButton(
                onPressed: (){
                  print("object Value");
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NextPage()));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                },
                child: Text("Login"),),

              ListTile(
                onTap: (){
                  print("Click this button");

                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/flutter.png") ,
                    // child: Image.asset("assets/flutter.png"),
                ),
                // leading: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: Text("Flutter User"),
                subtitle: Text("last message"),
                trailing:Text("10:00 PM") ,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                  Text("Hey Flutter"),
                ],),
              ),
              Wrap(children: [
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
                Text("Hey Flutter"),
              ],),
              ListTile(
                onTap: (){
                  print("Click this button");

                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/flutter.png") ,
                  // child: Image.asset("assets/flutter.png"),
                ),
                // leading: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: Text("Flutter User"),
                subtitle: Text("last message"),
                trailing:Text("10:00 PM") ,
              ),
              ListTile(
                onTap: (){
                  print("Click this button");

                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/flutter.png") ,
                  // child: Image.asset("assets/flutter.png"),
                ),
                // leading: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: Text("Flutter User"),
                subtitle: Text("last message"),
                trailing:Text("10:00 PM") ,
              ),
              ListTile(
                onTap: (){
                  print("Click this button");

                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/flutter.png") ,
                  // child: Image.asset("assets/flutter.png"),
                ),
                // leading: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: Text("Flutter User"),
                subtitle: Text("last message"),
                trailing:Text("10:00 PM") ,
              ), ListTile(
                onTap: (){
                  print("Click this button");

                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/flutter.png") ,
                  // child: Image.asset("assets/flutter.png"),
                ),
                // leading: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: Text("Flutter User"),
                subtitle: Text("last message"),
                trailing:Text("10:00 PM") ,
              ), ListTile(
                onTap: (){
                  print("Click this button");

                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/flutter.png") ,
                  // child: Image.asset("assets/flutter.png"),
                ),
                // leading: Image.network("https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: Text("Flutter User"),
                subtitle: Text("last message"),
                trailing:Text("10:00 PM") ,
              ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("object print");
        },
        child: Text("+"),),

    );
  }
}
