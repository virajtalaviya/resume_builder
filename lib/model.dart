class PersonalInfo {
  final String? name;
  final String? email;
  final String? address;
  final String? phone;


  PersonalInfo({
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) => PersonalInfo(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        phone: json["phone"],
      );
}

class Education {
  final List<String>? course;
  final List<String>? schoolUniversity;
  final List<String>? grade;
  final List<String>? year;

  Education({
    this.course,
    this.schoolUniversity,
    this.grade,
    this.year,
  });

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        course: json["course"],
        schoolUniversity: json["school_university"],
        grade: json["grade"],
        year: json["year"],
      );
}

class Experience {
  final List<String>? jobTitle;
  final List<String>? startDate;
  final List<String>? endDate;
  final List<String>? jobDetails;

  Experience({
    this.jobTitle,
    this.startDate,
    this.endDate,
    this.jobDetails,
  });

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        jobTitle: json["job_title"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        jobDetails: json["job_details"],
      );
}

class Projects {
  final List<String>? title;
  final List<String>? description;

  Projects({
    this.title,
    this.description,
  });

  factory Projects.fromJson(Map<String, dynamic> json) => Projects(
        title: json["project_title"],
        description: json["description"],
      );
}

class Skills {
  final List<String>? skill;

  Skills({
    this.skill,
  });

  factory Skills.fromJson(Map<String, dynamic> json) => Skills(
        skill: json["skill"],
      );
}

class Languages {
  final List<String>? language;

  Languages({
    this.language,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        language: json["languages"],
      );
}
