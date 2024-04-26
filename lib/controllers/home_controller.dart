import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/screens/cover_letter_screen.dart';
import 'package:resume_builder/screens/education_details_screen.dart';
import 'package:resume_builder/screens/experience_details_screen.dart';
import 'package:resume_builder/screens/language_screen.dart';
import 'package:resume_builder/screens/objective_screen.dart';
import 'package:resume_builder/screens/personal_details_screen.dart';
import 'package:resume_builder/screens/projects_screen.dart';
import 'package:resume_builder/screens/skills_screen.dart';

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
        Get.to(const PersonalDetailsScreen());
        break;
      case 1:
        Get.to(const EducationDetailsScreen());
        break;
      case 2:
        Get.to(const ExperienceDetailsScreen());
        break;
      case 3:
        Get.to(const SkillsScreen());
        break;
      case 4:
        Get.to(const ObjectiveScreen());
        break;
      case 5:
        Get.to(const CoverLetterScreen());
        break;
      case 6:
        Get.to(const ProjectsDetailsScreen());
        break;
      case 7:
        Get.to(const LanguageScreen());
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
