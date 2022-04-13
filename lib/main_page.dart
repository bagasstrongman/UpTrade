import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221E40),
      appBar: AppBar(
        backgroundColor: Color(0xff221E40),
        title: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image(image: AssetImage("assets/Logo.png"))),
      ),
    );
  }
}
