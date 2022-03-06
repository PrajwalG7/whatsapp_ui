class StatusModel {
  final String name;
  final String time;
  final String avatar;
  StatusModel({
    this.name,
    this.time,
    this.avatar,
  });
}

// ignore: non_constant_identifier_names
List<StatusModel> statusData = [
  StatusModel(
      name: "Prajwal", time: "12:00 am", avatar: "images/prajwalsImage.jpg"),
];
