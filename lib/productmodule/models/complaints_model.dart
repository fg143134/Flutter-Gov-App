// To parse this JSON data, do
//
//     final complaints = complaintsFromJson(jsonString);

import 'dart:convert';

Complaints complaintsFromJson(String str) => Complaints.fromJson(json.decode(str));

String complaintsToJson(Complaints data) => json.encode(data.toJson());

class Complaints {
  Complaints({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.description,
    required this.publishedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.mobile,
  });

  int id;
  String name;
  String email;
  dynamic phone;
  String description;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  String mobile;

  factory Complaints.fromJson(Map<String, dynamic> json) => Complaints(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    description: json["description"],
    publishedAt: DateTime.parse(json["published_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    mobile: json["mobile"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "description": description,
    "published_at": publishedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "mobile": mobile,
  };
}
