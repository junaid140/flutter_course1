
import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';

class CounterViewModel extends ChangeNotifier {

  int counter = 0;

  increment(){
    counter ++;
    notifyListeners();
  }

}