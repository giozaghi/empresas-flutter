import 'package:json_annotation/json_annotation.dart';



part 'user_model.g.dart';

@JsonSerializable()
class UserModel{
  final int id;
  final String token;
  final String client;
  final String uid;

  UserModel({this.id, this.token, this.client, this.uid});

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  String toString() {
    return 'User{id: $id, token: $token, client: $client, uid: $uid}';
  }




}