import 'package:flutter/material.dart';
import 'package:flutter_cryptowallet_app/find_page.dart';
import 'package:flutter_cryptowallet_app/main_screen.dart';
import 'package:flutter_cryptowallet_app/notification_service.dart';
import 'package:flutter_cryptowallet_app/main_screen.dart';
import 'package:flutter_cryptowallet_app/notification_service.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UpTrade',
      home: MainScreen(),
      
    );
  }
}

//Develope by Bagas Satria founder of Fly Morph Studi
//https://www.instagram.com/fly_morph/
//https://github.com/bagasstrongman/

