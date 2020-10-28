import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NotifiCationPage(),
    );
  }
}

class NotifiCationPage extends StatefulWidget{
  //Ctre + 0 create state
  @override
  State createState() => NotifiCationPageState();
}

class NotifiCationPageState extends State<NotifiCationPage>{
  FirebaseMessaging fm = FirebaseMessaging();

  NotifiCationPageState(){
    fm.configure();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FCM'),),
    );
  }
}