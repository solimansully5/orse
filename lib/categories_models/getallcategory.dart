import 'dart:convert';

Categories categoriesFromJson(String str) => Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
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
  List<CourseCategory> data;
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

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
    currentPage: json["current_page"],
    data: List<CourseCategory>.from(json["data"].map((x) => CourseCategory.fromJson(x))),
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

class CourseCategory {
  CourseCategory({
    this.id,
    this.userId,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.courses,
  });

  int id;
  int userId;
  String name;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  List<Course> courses;

  factory CourseCategory.fromJson(Map<String, dynamic> json) => CourseCategory(
    id: json["id"],
    userId: json["user_id"],
    name: json["name"],
    description: json["description"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    courses: List<Course>.from(json["courses"].map((x) => Course.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "name": name,
    "description": description,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "courses": List<dynamic>.from(courses.map((x) => x.toJson())),
  };
}

class Course {
  Course({
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
  int rate;
  String description;
  int categoryId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Course.fromJson(Map<String, dynamic> json) => Course(
    id: json["id"],
    instructorId: json["instructor_id"],
    name: json["name"],
    price: json["price"],
    approved: json["approved"],
    presentation: json["presentation"],
    speed: json["speed"],
    assignments: json["assignments"],
    views: json["views"],
    rate: json["rate"] == null ? null : json["rate"],
    description: json["description"],
    categoryId: json["category_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
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
    "rate": rate == null ? null : rate,
    "description": description,
    "category_id": categoryId,
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




