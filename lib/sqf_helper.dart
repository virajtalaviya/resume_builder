import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class PasswordClass {
  String? name;
  String? address;
  String? email;
  String? phone;
  String? course;
  String? school_university;
  String? grade;
  String? year;
  String? job_title;
  String? start_date;
  String? end_date;
  String? details;
  String? skills;
  String? objective;
  String? projectTitle;
  String? description;
  String? language;

  PasswordClass({
    this.name,
    this.address,
    this.email,
    this.phone,
    this.course,
    this.school_university,
    this.grade,
    this.year,
    this.job_title,
    this.start_date,
    this.end_date,
    this.details,
    this.skills,
    this.objective,
    this.projectTitle,
    this.description,
    this.language,
  });
}

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
              projectTitle TEXT, 
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
      "projectTitle": projectTitle,
      "description": description,
    });
  }

  static Future<void> addLanguages(String language) async {
    await database?.insert("Information", {
      "languages": language,
    });
  }
}
