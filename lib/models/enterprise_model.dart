import 'package:json_annotation/json_annotation.dart';



part 'enterprise_model.g.dart';

@JsonSerializable()
class EnterpriseModel {
  final int id;
  final String name;
  final String description;
  final String email;
  final String facebook;
  final String twitter;
  final String linkedIn;
  final String photo;
  final int value;
  final int shares;
  final double sharePrice;
  final bool ownEnterprise;
  final String city;
  final String country;
  final String phone;
  final Map<String, dynamic> enterpriseType;

  EnterpriseModel({
    this.id,
    this.name,
    this.description,
    this.email,
    this.facebook,
    this.twitter,
    this.linkedIn,
    this.photo,
    this.value,
    this.shares,
    this.sharePrice,
    this.ownEnterprise,
    this.city,
    this.country,
    this.enterpriseType,
    this.phone,
  });

  factory EnterpriseModel.fromJson(Map<String, dynamic> json) => _$EnterpriseModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnterpriseModelToJson(this);

}
