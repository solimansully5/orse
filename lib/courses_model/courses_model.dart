import 'dart:convert';

Courses coursesFromJson(String str) => Courses.fromJson(json.decode(str));

String coursesToJson(Courses data) => json.encode(data.toJson());

class Courses {
  Courses({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int currentPage;
  List<CoursessWithLesson> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory Courses.fromJson(Map<String, dynamic> json) => Courses(
    currentPage: json["current_page"],
    data: List<CoursessWithLesson>.from(json["data"].map((x) => CoursessWithLesson.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class CoursessWithLesson {
  CoursessWithLesson({
    this.id,
    this.instructorId,
    this.name,
    this.price,
    this.approved,
    this.presentation,
    this.speed,
    this.assignments,
    this.views,
    this.rate,
    this.description,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.lessons,
  });

  int id;
  int instructorId;
  String name;
  int price;
  int approved;
  String presentation;
  String speed;
  String assignments;
  int views;
  dynamic rate;
  String description;
  int categoryId;
  DateTime createdAt;
  DateTime updatedAt;
  List<Lessonnn> lessons;

  factory CoursessWithLesson.fromJson(Map<String, dynamic> json) => CoursessWithLesson(
    id: json["id"],
    instructorId: json["instructor_id"],
    name: json["name"],
    price: json["price"],
    approved: json["approved"],
    presentation: json["presentation"],
    speed: json["speed"],
    assignments: json["assignments"],
    views: json["views"],
    rate: json["rate"],
    description: json["description"],
    categoryId: json["category_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    lessons: List<Lessonnn>.from(json["lessons"].map((x) => Lessonnn.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "instructor_id": instructorId,
    "name": name,
    "price": price,
    "approved": approved,
    "presentation": presentation,
    "speed": speed,
    "assignments": assignments,
    "views": views,
    "rate": rate,
    "description": description,
    "category_id": categoryId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "lessons": List<dynamic>.from(lessons.map((x) => x.toJson())),
  };
}

class Lessonnn {
  Lessonnn({
    this.id,
    this.views,
    this.instructorId,
    this.name,
    this.decritpion,
    this.courseId,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int views;
  int instructorId;
  String name;
  String decritpion;
  int courseId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Lessonnn.fromJson(Map<String, dynamic> json) => Lessonnn(
    id: json["id"],
    views: json["views"],
    instructorId: json["instructor_id"],
    name: json["name"],
    decritpion: json["decritpion"],
    courseId: json["course_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
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
  };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String url;
  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label,
    "active": active,
  };
}
