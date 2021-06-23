import 'dart:convert';

Insert insertFromJson(String str) => Insert.fromJson(json.decode(str));

String insertToJson(Insert data) => json.encode(data.toJson());

class Insert {
  Insert({
    this.data,
  });

  Data data;

  factory Insert.fromJson(Map<String, dynamic> json) => Insert(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.name,
    this.description,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String name;
  String description;
  int userId;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    name: json["name"],
    description: json["description"],
    userId: json["user_id"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "user_id": userId,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}
