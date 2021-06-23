import 'dart:convert';

Lessoon lessonFromJson(String str) => Lessoon.fromJson(json.decode(str));

String lessonToJson(Lessoon data) => json.encode(data.toJson());

class Lessoon {
  Lessoon({
    this.data,
  });

  List<lessonwithvideo> data;

  factory Lessoon.fromJson(Map<String, dynamic> json) => Lessoon(
    data: List<lessonwithvideo>.from(json["data"].map((x) => lessonwithvideo.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class lessonwithvideo {
  lessonwithvideo({
    this.id,
    this.views,
    this.instructorId,
    this.name,
    this.decritpion,
    this.courseId,
    this.createdAt,
    this.updatedAt,
    this.videos,
  });

  int id;
  int views;
  int instructorId;
  String name;
  String decritpion;
  int courseId;
  DateTime createdAt;
  DateTime updatedAt;
  List<Video> videos;

  factory lessonwithvideo.fromJson(Map<String, dynamic> json) => lessonwithvideo(
    id: json["id"],
    views: json["views"],
    instructorId: json["instructor_id"],
    name: json["name"],
    decritpion: json["decritpion"],
    courseId: json["course_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    videos: List<Video>.from(json["videos"].map((x) => Video.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "views": views,
    "instructor_id": instructorId,
    "name": name,
    "decritpion": decritpion,
    "course_id": courseId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "videos": List<dynamic>.from(videos.map((x) => x.toJson())),
  };
}

class Video {
  Video({
    this.id,
    this.name,
    this.decritpion,
    this.path,
    this.views,
    this.lessonId,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String decritpion;
  String path;
  int views;
  int lessonId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
    id: json["id"],
    name: json["name"],
    decritpion: json["decritpion"],
    path: json["path"],
    views: json["views"],
    lessonId: json["lesson_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "decritpion": decritpion,
    "path": path,
    "views": views,
    "lesson_id": lessonId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
