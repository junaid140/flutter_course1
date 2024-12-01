import 'package:flutter/material.dart';
import 'package:flutterapp/mvc/controllers/counterController.dart';
import 'package:flutterapp/mvvm/viewModel/counterViewModel.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CounterApp1 extends StatefulWidget {
  const CounterApp1({super.key});

  @override
  State<CounterApp1> createState() => _CounterApp1State();
}

class _CounterApp1State extends State<CounterApp1> {

  // CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("Building State");

    return
      Scaffold(
        appBar: AppBar(title: Text("Counter App"),),
        body: Consumer<CounterViewModel>(
          builder: (context,counterViewModel,child){
            return Column(children: [

              Center(child:  Text("Counter Value: ${counterViewModel.counter}"),),
              ElevatedButton(onPressed: (){
                counterViewModel.increment();
              }, child: Text("Update")),
              child!
            ]);
          },
          child: Text("Out side Builder child"),
        ),
        floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: (){
          Provider.of<CounterViewModel>(context,listen: true).increment();
        }),
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
