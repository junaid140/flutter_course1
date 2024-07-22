import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){

        },),
        title: Text("Next Page"),),
      body: TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Next Page")),);
  }
}
