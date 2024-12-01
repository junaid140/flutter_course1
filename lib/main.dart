// import 'package:flutter/material.dart';

import'package:flutter/material.dart';
import 'package:get/get.dart';

import 'basic_widgets.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';
import 'mvc/view/counterApp.dart';
import 'mvvm/view/counterApp.dart';
import 'mvvm/viewModel/counterViewModel.dart';
import 'pages/auth/login.dart';
import 'pages/productsPage.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyCA064SqjWV13HUxff9zWEC4nuSKXYweYg",
      appId: "1:741654236233:android:53b50a5cd6513df864c398",
      messagingSenderId: "741654236233",
      projectId: "flutter-course-1f246",
      storageBucket: "flutter-course-1f246.appspot.com"
  ));
  runApp(const MyApp());
}

// class level stateless statefull,


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CounterApp1()
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        // backgroundColor: Color(0xfffd67788),
        centerTitle: true,
        leading: Icon(Icons.menu,color: Colors.white,size: 50,),
        title: Text("Hey Flutter"),
        actions: [
          Icon(Icons.search),
          // SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 40,left: 40),
            child: Icon(Icons.more_vert),
          ),
          // SizedBox(width: 10,),

        ],
      ),
      body:Center(
        child: Container(
          // alignment: Alignment.bottomCenter,
          height: 200,
          width: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),


          decoration: BoxDecoration(
            color: Colors.red,
            // borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.blue,width: 10),
            // shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.red,spreadRadius: 5,blurRadius: 10,offset: Offset(-10,10)),
              BoxShadow(color: Colors.grey,spreadRadius: 5,blurRadius: 10,offset: Offset(-10,-10)),
              BoxShadow(color: Colors.green,spreadRadius: 5,blurRadius: 10,offset: Offset(10,-10)),
              BoxShadow(color: Colors.black,spreadRadius: 5,blurRadius: 10,offset: Offset(10,10)),
            ],
            gradient:
            RadialGradient(
                colors: [
                  Colors.black,
                  Colors.blueAccent,
                  Colors.red
                ]
            ),
            // LinearGradient(
            //   colors: [
            //     Colors.black,
            //     Colors.blueAccent,
            //     Colors.red
            //   ]
            // ),
          ),
          child: Text("Flutter App",
            style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: Text("Bottom navigation"),

    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home pages of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Building State");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
// class HomePage2 extends StatefulWidget {
//   const HomePage2({super.key});
//
//   @override
//   State<HomePage2> createState() => _HomePage2State();
// }
//
// class _HomePage2State extends State<HomePage2> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


