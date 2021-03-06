import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const styleSender = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: Color.fromRGBO(225, 255, 199, 1.0),
  );
  static const styleReciever = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
  );

  ScrollController _myScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _myScrollController.jumpTo(_myScrollController.position.maxScrollExtent);
    });
    //use ListView.Builder when using dynamic content
    return ListView(
      controller: _myScrollController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleSender,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReciever,
          child: Text('Hi, developer!'),
        ),
      ],
    );
  }
}
