import 'package:flutter/material.dart';
import 'package:flutterapp/mvc/controllers/counterController.dart';
import 'package:get/get.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("Building State");

    return
      Scaffold(
        appBar: AppBar(title: Text("Counter App"),),
        body: Center(child: Obx(()=> Text("Counter Value: ${counterController.counter.value}")),),
        floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: (){
          counterController.increment();
        },),
      );

    // GetBuilder<CounterController>(
    //     builder: (counterController){
    //       return  Scaffold(
    //         appBar: AppBar(title: Text("Counter App"),),
    //         body: Center(child: Obx(()=> Text("Counter Value: ${counterController.counter.value}")),),
    //         floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: (){
    //           counterController.increment();
    //         },),
    //       );
    //     }
    // );
  }
}
