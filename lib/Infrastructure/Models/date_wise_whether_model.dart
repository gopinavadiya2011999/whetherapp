import 'package:flutter/material.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'package:whetherapp/Infrastructure/Constant/image_constant.dart';

class DateWiseWhetherModel {
  List<WhetherData> whetherData;
  DateTime date;
  bool isSelected;

  DateWiseWhetherModel({required this.whetherData, required this.date, this.isSelected = false});
}

class WhetherData {
  String image;
  Color color;
  DateTime time;
  String temp;

  WhetherData({required this.image, required this.color, required this.time, required this.temp});
}

List<DateWiseWhetherModel> dataModel = [
  DateWiseWhetherModel(
    whetherData: [
      WhetherData(
          image: ImageConstant.sun,
          color: ColorConstants.blue,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 1, DateTime.now().hour + 2, DateTime.now().minute + 10),
          temp: "21"),
      WhetherData(
          image: ImageConstant.cloudy,
          color: ColorConstants.green,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 1, DateTime.now().hour + 8, DateTime.now().minute + 11),
          temp: "8"),
      WhetherData(
          image: ImageConstant.contrast,
          color: ColorConstants.yellow,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 1, DateTime.now().hour + 10, DateTime.now().minute + 1),
          temp: "15"),
      WhetherData(
          image: ImageConstant.moon,
          color: Colors.purple,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 1, DateTime.now().hour + 11, DateTime.now().minute + 2),
          temp: "18"),
    ],
    date: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day - 1),
  ),
  DateWiseWhetherModel(
    isSelected: true,
    whetherData: [
      WhetherData(
          image: ImageConstant.sun,
          color: ColorConstants.blue,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 4, DateTime.now().minute + 10),
          temp: "21"),
      WhetherData(
          image: ImageConstant.cloudy,
          color: ColorConstants.green,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 8, DateTime.now().minute + 11),
          temp: "25"),
      WhetherData(
          image: ImageConstant.contrast,
          color: ColorConstants.yellow,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 12, DateTime.now().minute + 1),
          temp: "24"),
      WhetherData(
          image: ImageConstant.moon,
          color: Colors.purple,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 16, DateTime.now().minute + 2),
          temp: "20"),
    ],
    date: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
  ),
  DateWiseWhetherModel(
    whetherData: [
      WhetherData(
          image: ImageConstant.sun,
          color: ColorConstants.blue,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, DateTime.now().hour + 3, DateTime.now().minute + 10),
          temp: "21"),
      WhetherData(
          image: ImageConstant.cloudy,
          color: ColorConstants.green,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, DateTime.now().hour + 6, DateTime.now().minute + 11),
          temp: "10"),
      WhetherData(
          image: ImageConstant.contrast,
          color: ColorConstants.yellow,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, DateTime.now().hour + 9, DateTime.now().minute + 1),
          temp: "15"),
      WhetherData(
          image: ImageConstant.moon,
          color: Colors.purple,
          time: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, DateTime.now().hour + 13, DateTime.now().minute + 2),
          temp: "12"),
    ],
    date: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1),
  ),
];
