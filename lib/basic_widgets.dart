//ListTile
//CircularAvatar
//Image
//Buttons, Navigation

// Button, ElevatedButton, OutlineButton, IconButton, TextButton, FloatingActionButton

// InkWell, GestureDetector, ListTile

//Multi child Widgets, Row, Column, Wrap, Stack, ListView, GridView, PageView

//Stack, TabBar, BottomNavigationBar,PageView,

// Drawer, PopUpMenu, Form, TextFormField, TextField
// checkbox, Radio, RadioListTile, Dropdown, ExpandedTile

// dialog, showDialog, AlertDialog, AboutDialog,DatePicker, TimePicker, showModelBottomSheet

//Transform, AnimatedContainer,Hero

// packages, plugins

// gradient_borders
// flutter_svg
// flutter_image_slider

// mj_image_slider
// google_fonts
// flutter_inset_box_shadow
// flutter_holo_date_picker
// circular_bottom_navigation
// avatar_view
// story_view
// flutter_animation_progress_bar
// drag_select_grid_view
// swipe_deck
// fluttertoast
// flutter_switch
// dotted_border
// dropdown_plus

//09-11-2024

// image_picker
// file_picker
// camera
// video_player
// audio_player
// Lottie
// QR Flutter
// wakelock
// screenshot
// animations
// record
// shader_mask
// font_awesome
// animated_text_kit
// flutter_slidable
// signature
// connectivity
// device_info
// in_app_review
// url_launcher
// fl_chart
// updater
// flutter_rating_bar
// CachedNetworkImage

/// Firebase
// Firebase project creation
// Firebase Setup
// Firebase Core, Firebase Auth, login, sign up , user profile
// Firebase Firestore (Cloud Firestore), Firebase Storage,
// Firebase Firestore (Cloud Firestore), CRUD (create, read, update, delete),
//Firebase Google Auth,
//where, order By,
//Firebase Storage

//Api Integration
// CRUD (Create ,  Read , Update Delete)

// Method, Endpoint, QueryParamenter(ALL), Header(ALL), Body(POST, PUT), Response Body
//Auth with Apis

//State Management , getx, provider
//get ( MVC Archi) Model , View, Controller
//Provider (MVVM archi) Model , View, ViewModel/ModelView/Providers,

// Local Storage
// Shared Prafer, hive


import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/next_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Widgets"),
        backgroundColor: Colors.blueAccent,
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

class PlayStore extends StatelessWidget {
  const PlayStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Play Store"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              child: GridView(
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                mainAxisExtent: 200,
                mainAxisSpacing: 10
                ),
                children: [
                  ListTile(
                    onTap: (){
                      print("Click this button");

                    },
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage:AssetImage("assets/flutter.png") ,
                      // child: Image.asset("assets/flutter.png"),
                    ),
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
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
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
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
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
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
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
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
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
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
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
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
                    title: Text("Flutter User"),
                    subtitle: Text("last message"),
                    // trailing:Text("10:00 PM") ,
                  ),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),
                  Image.asset("assets/flutter.png"),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Text("sdijhsdjk sdhk"),
                Text("sdijhsdjk sdhk"),
                Text("sdijhsdjk sdhk"),
                Text("sdijhsdjk sdhk"),
                Text("sdijhsdjk sdhk"),
                Text("sdijhsdjk sdhk"),
              ],
            ),
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
            title: Text("Flutter User"),
            subtitle: Text("last message"),
            trailing:Text("10:00 PM") ,
          ),
        ],
      ),
    );
  }
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Flutter Stack Widget"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: TabBar(
              tabs: [
                Tab(child: Text("Chats"),),
                Tab(child: Text("Status"),),
                Tab(child: Text("Calls"),),
              ],
            ),),
        ),
        body:TabBarView(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/flutter logo.png"),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black.withOpacity(0.3),blurRadius: 10)
                                    ],
                                    shape: BoxShape.circle
                                ),
                                child: Icon(Icons.camera_alt)))
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Text("Stack Widget1")),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Stack Widget")),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Stack Widget")),
                        Positioned(
                            bottom: 10,
                            right: 50,
                            child: Text("Stack Widget898989")),
                        Text("Stack Widget"),
                        Text("Stack Widget"),
                        Text("Stack WidgeD"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PlayStore(),
            // Text("Status"),
            BasicWidgets(),
            // Text("Calls"),
          ],
        ),

      ),
    );
  }
}

class TestApp1 extends StatefulWidget {
   TestApp1({super.key});

  @override
  State<TestApp1> createState() => _TestApp1State();
}

class _TestApp1State extends State<TestApp1>  {
  int selectedIndex = 1;

  PageController pageController = PageController();

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        key: key,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Flutter Stack Widget"),
          actions: [
            IconButton(
                onPressed: (){
                  key.currentState!.openEndDrawer();
                },
                icon:Icon(Icons.menu)),
            PopupMenuButton(
                onSelected: (value){
                  if(value=="setting"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayStore()));
                  }
                  else if(value=="profile"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicWidgets()));

                  }
                },
                itemBuilder: (context){return [
              PopupMenuItem(child: Text("Setting"),value: "setting",),
              PopupMenuItem(child: Text("Profile"),value: "profile",),
            ];})
          ],

        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text("sdjch"),
              ListTile(title: Text("dsjhsdkj"),),
              ListTile(title: Text("dsjhsdkj"),),
              ListTile(title: Text("dsjhsdkj"),),
              ListTile(title: Text("dsjhsdkj"),),
              ListTile(title: Text("dsjhsdkj"),),
              ListTile(title: Text("dsjhsdkj"),),
            ],
          ),
        ),
        endDrawer: Drawer(),
        body:PageView(
          controller: pageController,
          onPageChanged: (value){
            selectedIndex =value;
            setState(() {

            });
          },
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/flutter logo.png"),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black.withOpacity(0.3),blurRadius: 10)
                                    ],
                                    shape: BoxShape.circle
                                ),
                                child: Icon(Icons.camera_alt)))
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Text("Stack Widget1")),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Stack Widget")),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("Stack Widget")),
                        Positioned(
                            bottom: 10,
                            right: 50,
                            child: Text("Stack Widget898989")),
                        Text("Stack Widget"),
                        Text("Stack Widget"),
                        Text("Stack WidgeD"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PlayStore(),
            Text("Status"),
            BasicWidgets(),
            Text("Calls"),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: (value){
            selectedIndex =value;
            pageController.animateToPage(value, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            setState(() {

            });
            print(selectedIndex);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Profile1"),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: "Profile2"),
          ],
        ),


    );
  }
}

class FormWidgets extends StatefulWidget {
   FormWidgets({super.key});

  @override
  State<FormWidgets> createState() => _FormWidgetsState();
}

class _FormWidgetsState extends State<FormWidgets> {
  bool isObscured = true;

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  bool isChecked = false;
  String? selectedGender;
  String? selectedDropdown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children:[
                TextFormField(
                  controller: email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val){
                    return val!.isEmpty?"Please enter your email":null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),

                  ),

                ),
                SizedBox(height: 10,),

                TextFormField(
                  controller: password,
                  obscureText: isObscured,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val){
                    return val!.length<6?"Password must contain at least 6 characters":null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: (){
                          isObscured = !isObscured;
                          print(isObscured);
                          setState(() {

                          });
                        },
                        icon: Icon(isObscured?Icons.visibility:Icons.visibility_off)),

                  ),

                ),
                TextField(),
                SizedBox(height: 10,),
                Checkbox(value: isChecked, onChanged: (value){
                  print(value);
                  isChecked =value!;
                  setState(() {

                  });
                }),
                Radio(value: "male", groupValue: selectedGender, onChanged: (value){
                  print(value);
                  selectedGender = value;
                  setState(() {});
                }),
                Radio(value: "female", groupValue:selectedGender, onChanged: (value){
                  print(value);
                  selectedGender = value;
                  setState(() {});
                }), Radio(value: "other", groupValue: selectedGender, onChanged: (value){
                  print(value);
                  selectedGender = value;
                  setState(() {});
                }),
                RadioListTile(
                  title: Text("Male"),

                    value: "male", groupValue: selectedGender, onChanged: (value){
                  print(value);
                  selectedGender = value;
                  setState(() {});
                }),
                RadioListTile(
                    title: Text("Female"),

                    value: "female", groupValue:selectedGender, onChanged: (value){
                  print(value);
                  selectedGender = value;
                  setState(() {});
                }),
                RadioListTile(
                    title: Text("Other"),
                    value: "other", groupValue: selectedGender, onChanged: (value){
                  print(value);
                  selectedGender = value;
                  setState(() {});
                }),

                ExpansionTile(title: Text("Are you a flutter student"),children: [
                  Text("Yes I am"),
                ], ),
                DropdownButton(
                  hint: Text("Select Gender"),
                    value:selectedDropdown ,
                    items: [
                  DropdownMenuItem(value:"male",child: Text("Male")),
                  DropdownMenuItem(value:"female",child: Text("Female")),
                  DropdownMenuItem(value:"other",child: Text("Other")),

                ], onChanged: (value){
                  selectedDropdown = value;
                  setState(() {
                  });
                }),


                ElevatedButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                    print("Form validated");
                  }
                },  child: Text("Login"))
              ] ,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPopUps extends StatefulWidget {
  const CustomPopUps({super.key});

  @override
  State<CustomPopUps> createState() => _CustomPopUpsState();
}

class _CustomPopUpsState extends State<CustomPopUps> {
  DateTime? pickedDate;
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    )
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Custom POPUp")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Carousel(
               autoScroll: true,
              autoScrollDuration: Duration(seconds: 2),
              // widgets
              items: [
                Container(
                  color: Colors.blue,
                  child: Text("Hello Flutter",
                  style:GoogleFonts.aldrich(),
                  ),
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.yellow,
                )
              ],
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border:  GradientBoxBorder(
                  gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
                  width: 4,
                ),
              ),
            ),
            SvgPicture.asset("assets/inactive.svg",color:Colors.red,height: 200,),
        
            ElevatedButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Custom POPUp"),
                    content:  Text("Are you want to logout?"),
                    actions: [
                      ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("No")),
                      ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text("Yes")),
                    ],
                  );
                  // return Dialog(
                  //   child: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       SizedBox(height: 10,),
                  //       Text("Logout Alert"),
                  //       Text("Are you want to logout?"),
                  //       SizedBox(height: 10,),
                  //       Row(
                  //           mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  //           children: [
                  //         ElevatedButton(onPressed: (){
                  //           Navigator.pop(context);
                  //         }, child: Text("No")),
                  //         ElevatedButton(onPressed: (){
                  //           Navigator.pop(context);
                  //         }, child: Text("yes"))
                  //       ]),
                  //       SizedBox(height: 10,),
                  //
                  //
                  //     ],
                  //   ),
                  // );
                });
        
              },
              child: Text("Show POP Up"),
            ),
            ElevatedButton(onPressed: ()async{
            final selectedDate = await  showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime(2050));
             print(selectedDate);
            if(selectedDate!=null){
              pickedDate =selectedDate;
              setState(() {
              });
             final selectedTime = await showTimePicker(context: context, initialTime: TimeOfDay(hour: 12, minute: 00));
            if(selectedTime!=null){
              pickedDate = DateTime(pickedDate!.year,pickedDate!.month,pickedDate!.day,selectedTime.hour,selectedTime.minute);
              setState(() {});
            }
            }
            }, child: Text("${pickedDate!=null?pickedDate:"Select Date"}")),
            ElevatedButton(onPressed: ()async{
        
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text("Give me a Review"),
                      ListTile(title: Text("Hello"),
                      subtitle: Text("this product"),
                      )
                    ],
                  ),
                );
        
              });
             }, child: Text("Give Review")),

            ElevatedButton(onPressed: ()async{
              final ImagePicker picker = ImagePicker();
              final XFile? image = await picker.pickImage(source: ImageSource.camera);
              if(image!=null){
                print(image.path);
                selectedImage = image;
                setState(() {

                });
              }

            }, child: selectedImage==null?Text("Image Picker"):Image.file(File(selectedImage!.path))),
            ElevatedButton(onPressed: ()async{
              FilePickerResult? result = await FilePicker.platform.pickFiles();

              if (result != null) {
                File file = File(result.files.single.path!);
              } else {
                print("File not selected");
                // User canceled the picker
              }
            }, child: Text("File Picker")),
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
                : Container(),
          ],
        ),
      ),
    );
  }
  XFile? selectedImage;
}




