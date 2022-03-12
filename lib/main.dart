import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/home_Page.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
        cameras,
        title: 'WhatsApp',
      ),
    );
  }
}
