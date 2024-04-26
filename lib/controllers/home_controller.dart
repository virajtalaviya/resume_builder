import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<ListContentClass> contentList = [
    ListContentClass(
      title: "Personal Details",
      iconData: Icons.person,
    ),
    ListContentClass(
      title: "Education",
      iconData: Icons.cast_for_education,
    ),
    ListContentClass(
      title: "Experience",
      iconData: Icons.business_center,
    ),
    ListContentClass(
      title: "Skills",
      iconData: Icons.star,
    ),
    ListContentClass(
      title: "Objective",
      iconData: Icons.webhook,
    ),
    ListContentClass(
      title: "Cover letter",
      iconData: Icons.email,
    ),
    ListContentClass(
      title: "Projects",
      iconData: Icons.rocket_launch,
    ),
    ListContentClass(
      title: "Languages",
      iconData: Icons.translate,
    ),
  ];

  void tapEventOfCard(int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        break;
      case 7:
        break;
    }
  }
}

class ListContentClass {
  final String title;
  final IconData iconData;

  ListContentClass({
    required this.title,
    required this.iconData,
  });
}
