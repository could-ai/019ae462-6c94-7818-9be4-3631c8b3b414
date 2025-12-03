import 'package:flutter/material.dart';

class Student {
  final String name;
  final String id;
  final String course;
  final String avatarUrl;
  final double attendance;

  Student({
    required this.name,
    required this.id,
    required this.course,
    required this.avatarUrl,
    required this.attendance,
  });
}

class Notice {
  final String title;
  final String date;
  final String description;
  final bool isNew;

  Notice({
    required this.title,
    required this.date,
    required this.description,
    this.isNew = false,
  });
}

class CourseSubject {
  final String name;
  final String code;
  final String professor;
  final String time;
  final double progress;
  final Color color;

  CourseSubject({
    required this.name,
    required this.code,
    required this.professor,
    required this.time,
    required this.progress,
    required this.color,
  });
}

class MockData {
  static final Student currentUser = Student(
    name: "Alex Johnson",
    id: "STU-2024-8842",
    course: "B.Sc. Computer Science",
    avatarUrl: "assets/avatar.png",
    attendance: 0.85,
  );

  static final List<Notice> notices = [
    Notice(
      title: "Mid-Term Exam Schedule",
      date: "Oct 24, 2023",
      description: "The mid-term examination schedule has been released. Check the exam portal.",
      isNew: true,
    ),
    Notice(
      title: "Library Maintenance",
      date: "Oct 22, 2023",
      description: "The main library will be closed for maintenance this Sunday.",
    ),
    Notice(
      title: "Science Fair Registration",
      date: "Oct 20, 2023",
      description: "Registration for the annual science fair is now open.",
    ),
  ];

  static final List<CourseSubject> subjects = [
    CourseSubject(
      name: "Data Structures",
      code: "CS-201",
      professor: "Dr. Alan Smith",
      time: "Mon, Wed 10:00 AM",
      progress: 0.75,
      color: Colors.blue,
    ),
    CourseSubject(
      name: "Database Systems",
      code: "CS-204",
      professor: "Prof. Sarah Connor",
      time: "Tue, Thu 02:00 PM",
      progress: 0.60,
      color: Colors.orange,
    ),
    CourseSubject(
      name: "Linear Algebra",
      code: "MAT-102",
      professor: "Dr. John Nash",
      time: "Fri 09:00 AM",
      progress: 0.90,
      color: Colors.purple,
    ),
    CourseSubject(
      name: "Web Development",
      code: "CS-305",
      professor: "Mr. Neo Anderson",
      time: "Mon 01:00 PM",
      progress: 0.45,
      color: Colors.teal,
    ),
  ];
}
