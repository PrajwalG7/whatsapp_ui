import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  final Icon callType;
  CallModel({this.name, this.message, this.time, this.avatar, this.callType});
  static Icon callRecived = Icon(
    Icons.call_received,
    size: 20,
    color: Colors.green,
  );
  static Icon callMade = Icon(Icons.call_made, size: 20, color: Colors.green);
  static Icon callMissed =
      Icon(Icons.call_missed_outlined, size: 20, color: Colors.redAccent);
}

List<CallModel> callData = [
  CallModel(
      name: "Prajwal",
      time: "12:00 am",
      callType: CallModel.callRecived,
      avatar: "images/prajwalsImage.jpg"),
  CallModel(
      name: "Prajwal",
      time: "12:10 am",
      callType: CallModel.callMissed,
      avatar: "images/prajwalsImage.jpg"),
  CallModel(
      name: "Prajwal",
      time: "12:20 am",
      callType: CallModel.callMade,
      avatar: "images/prajwalsImage.jpg"),
  CallModel(
      name: "Prajwal",
      time: "12:30 am",
      callType: CallModel.callRecived,
      avatar: "images/prajwalsImage.jpg"),
  CallModel(
      name: "Prajwal",
      time: "1:00 am",
      callType: CallModel.callMade,
      avatar: "images/prajwalsImage.jpg"),
  CallModel(
      name: "Prajwal",
      time: "2:00 am",
      callType: CallModel.callRecived,
      avatar: "images/prajwalsImage.jpg"),
  CallModel(
      name: "Prajwal",
      time: "3:00 am",
      callType: CallModel.callMissed,
      avatar: "images/prajwalsImage.jpg")
];
