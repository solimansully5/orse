import 'dart:convert';

Dalete daleteFromJson(String str) => Dalete.fromJson(json.decode(str));

String daleteToJson(Dalete data) => json.encode(data.toJson());

class Dalete {
  Dalete({
    this.data,
  });

  Data data;

  factory Dalete.fromJson(Map<String, dynamic> json) => Dalete(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.userId,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String name;
  String description;
  DateTime createdAt;
  DateTime updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    userId: json["user_id"],
    name: json["name"],
    description: json["description"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "name": name,
    "description": description,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
