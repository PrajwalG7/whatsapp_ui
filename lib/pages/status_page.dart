import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/status_model.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage('images/no_image.jpg'),
          ),
          title: Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.grey[700], fontSize: 15.0),
          ),
          onTap: () {},
        ),
        Divider(),
        Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Recent Updates",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Flexible(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (BuildContext context, int i) => Column(
              children: [
                ListTile(
                    leading: CircleAvatar(
                      radius: 25.5,
                      backgroundColor: Colors.green[300],
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 23,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(
                                statusData[i].avatar ?? 'images/no_image.jpg'),
                          )),
                    ),
                    title: Text(
                      statusData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      statusData[i].time,
                      style: TextStyle(color: Colors.grey[700], fontSize: 15.0),
                    ),
                    onTap: () {}),
                Divider(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
