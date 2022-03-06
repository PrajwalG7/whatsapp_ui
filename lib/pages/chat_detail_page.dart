import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/message_page.dart';

class ChatDetailPage extends StatefulWidget {
  ChatDetailPage({Key key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("images/prajwalsImage.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Text(
                  "Prajwal",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
            IconButton(icon: Icon(Icons.call), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),

            // IconButton(icon: Icon(Icons.call), onPressed: () {}),
            // IconButton(icon: Icon(Icons.video_call), onPressed: () {})
          ],
        ),
        body: Column(
          children: [
            Expanded(child: MessagePage()),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 10,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions_outlined),
                          suffixIcon: Icon(Icons.send),
                          icon: Icon(Icons.attach_file_rounded),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  color: Colors.green[200], width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  color: Colors.green[200], width: 1)),
                          hintText: "Type a message"),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
