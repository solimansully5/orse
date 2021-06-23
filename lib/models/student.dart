import 'dart:convert';

StudentResponse studentFromJson(String str) => StudentResponse.fromJson(json.decode(str));

String studentToJson(StudentResponse data) => json.encode(data.toJson());

class StudentResponse {
  StudentResponse({
    this.data,
  });

  List<Student> data;

  factory StudentResponse.fromJson(Map<String, dynamic> json) => StudentResponse(
    data: List<Student>.from(json["data"].map((x) => Student.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Student {
  Student({
    this.id,
    this.joined,
    this.body,
    this.numberOfStudents,
    this.title,
    this.userId,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  bool joined;
  String body;
  int numberOfStudents;
  String title;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
    id: json["id"],
    joined: json["joined"],
    body: json["body"],
    numberOfStudents: json["number_of_students"],
    title: json["title"],
    userId: json["user_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "joined": joined,
    "body": body,
    "number_of_students": numberOfStudents,
    "title": title,
    "user_id": userId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
