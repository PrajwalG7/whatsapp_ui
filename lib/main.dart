import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/home_Page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
          primaryColor: Color(0xff075e54), accentColor: Color(0xff25d366)),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'WhatsApp',
      ),
    );
  }
}
