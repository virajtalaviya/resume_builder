class CVModel {
  final String? fullName;
  final String? address;
  final String? email;
  final String? phone;
  final List<Education>? education;
  final List<Experience>? experience;
  final List<String>? skills;
  final String? objective;
  final List<Projects>? projects;
  final List<String>? languages;

  CVModel({
    this.fullName,
    this.address,
    this.email,
    this.phone,
    this.education,
    this.experience,
    this.skills,
    this.objective,
    this.projects,
    this.languages,
  });
}

class Education {
  final String? course;
  final String? schoolUniversity;
  final String? grade;
  final String? year;

  Education({
    this.course,
    this.schoolUniversity,
    this.grade,
    this.year,
  });
}

class Experience {
  final String? jobTitle;
  final String? startDate;
  final String? endDate;
  final String? jobDetails;

  Experience({
    this.jobTitle,
    this.startDate,
    this.endDate,
    this.jobDetails,
  });
}

class Projects{
  final String? title;
  final String? description;

  Projects({
    this.title,
    this.description,
});
}