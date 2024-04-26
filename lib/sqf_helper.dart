import 'dart:convert';
import 'dart:developer';

import 'package:resume_builder/model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DataBaseManager {
  static Database? database;

  static Future<int> init() async {
    String path = join(await getDatabasesPath(), "database.db");
    database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) {
        return db.execute(
          '''CREATE TABLE Information(
              id INTEGER PRIMARY KEY,
              name TEXT,
              address TEXT,
              email TEXT,
              phone TEXT,
              course TEXT,
              school_university TEXT, 
              grade TEXT, 
              year TEXT, 
              job_title TEXT, 
              start_date TEXT, 
              end_date TEXT, 
              details TEXT, 
              skills TEXT, 
              objective TEXT, 
              project_title TEXT, 
              description TEXT, 
              languages TEXT
             )''',
        );
      },
    );
    return 1;
  }

  static Future<void> addPersonalInfo(String name, String address, String email, String phone) async {
    await database?.insert("Information", {
      "name": name,
      "email": email,
      "address": address,
      "phone": phone,
    });
  }

  static Future<void> addEducationInfo(String course, String schoolUniversity, String grade, String year) async {
    await database?.insert("Information", {
      "course": course,
      "school_university": schoolUniversity,
      "grade": grade,
      "year": year,
    });
  }

  static Future<void> addExperienceInfo(String jobTitle, String startDate, String endDate, String details) async {
    await database?.insert("Information", {
      "job_title": jobTitle,
      "start_date": startDate,
      "end_date": endDate,
      "details": details,
    });
  }

  static Future<void> addSkills(String skill) async {
    await database?.insert("Information", {
      "skills": skill,
    });
  }

  static Future<void> addObjective(String objective) async {
    await database?.insert("Information", {
      "objective": objective,
    });
  }

  static Future<void> addProjects(String projectTitle, String description) async {
    await database?.insert("Information", {
      "project_title": projectTitle,
      "description": description,
    });
  }

  static Future<void> addLanguages(String language) async {
    await database?.insert("Information", {
      "languages": language,
    });
  }

  static Future<PersonalInfo> getPersonalInfo() async {
    List<Map<String, Object?>>? personalInfo =
        await database?.query("Information", columns: ["name", "email", "address", "phone"]);

    return PersonalInfo(
      name: personalInfo?[0]["name"] as String,
      email: personalInfo?[0]["email"] as String,
      address: personalInfo?[0]["address"] as String,
      phone: personalInfo?[0]["phone"] as String,
    );
  }
  
}
