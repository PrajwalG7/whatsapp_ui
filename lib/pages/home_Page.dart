import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/call_page.dart';
import 'package:whatsapp_ui/pages/chat_page.dart';
import 'package:whatsapp_ui/pages/status_page.dart';

import 'camera_screen.dart';

class MyHomePage extends StatefulWidget {
  var cameras;
  MyHomePage(this.cameras, {Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: "CHATS"),
    Tab(text: "STATUS"),
    Tab(text: "CALLS")
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras),
          ChatPage(),
          StatusPage(),
          CallPage()
        ],
      ),
      floatingActionButton: _getFAB(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return (FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      );
    } else {
      return null;
    }
  }
}
