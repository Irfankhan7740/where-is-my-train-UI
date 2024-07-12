import 'package:flutter/material.dart';
import 'package:where_is_my_train/Screens/HomePageScreen.dart';
import 'package:where_is_my_train/Screens/Find_Train.dart';
import 'package:where_is_my_train/Screens/LiveTrain_Location.dart';
import 'package:where_is_my_train/Screens/Pnr_Screen.dart';
import 'package:where_is_my_train/Screens/Setting_Screen.dart';
import 'package:where_is_my_train/Screens/Ticket_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
       home: const MyHomePage(title: "Where is my Train")

      //home: const LiveTrain_Location()
     // home: const Train_Location(),
      //home: const Ticket_Screen(),
        //home: const Setting_Screen()
    // home: const MyApp(),
    );
  }
}
