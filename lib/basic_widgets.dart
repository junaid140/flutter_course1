//ListTile
//CircularAvatar
//Image

import 'package:flutter/material.dart';
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
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: ListTile(
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
        ),
      ),
    );
  }
}
