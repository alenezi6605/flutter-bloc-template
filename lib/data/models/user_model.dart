import 'dart:convert';

UserModel UserModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String UserModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({required this.name, required this.email, required this.id});

  String name;
  String email;
  int id;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(email: json["email"], name: json["name"], id: json["id"]);

  Map<String, dynamic> toJson() => {"name": name, "email": email, "id": id};
}
