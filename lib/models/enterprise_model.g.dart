// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnterpriseModel _$EnterpriseModelFromJson(Map<String, dynamic> json) {
  return EnterpriseModel(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    email: json['email'] as String,
    facebook: json['facebook'] as String,
    twitter: json['twitter'] as String,
    linkedIn: json['linkedIn'] as String,
    photo: json['photo'] as String,
    value: json['value'] as int,
    shares: json['shares'] as int,
    sharePrice: (json['sharePrice'] as num)?.toDouble(),
    ownEnterprise: json['ownEnterprise'] as bool,
    city: json['city'] as String,
    country: json['country'] as String,
    enterpriseType: json['enterpriseType'] as Map<String, dynamic>,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$EnterpriseModelToJson(EnterpriseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'email': instance.email,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'linkedIn': instance.linkedIn,
      'photo': instance.photo,
      'value': instance.value,
      'shares': instance.shares,
      'sharePrice': instance.sharePrice,
      'ownEnterprise': instance.ownEnterprise,
      'city': instance.city,
      'country': instance.country,
      'phone': instance.phone,
      'enterpriseType': instance.enterpriseType,
    };
