// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      gender: json['gender'] as String?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      email: json['email'] as String?,
      login: json['login'] == null
          ? null
          : Login.fromJson(json['login'] as Map<String, dynamic>),
      dob: json['dob'] == null
          ? null
          : DateOfBirth.fromJson(json['dob'] as Map<String, dynamic>),
      registered: json['registered'] == null
          ? null
          : Register.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      cell: json['cell'] as String?,
      id: json['id'] == null
          ? null
          : Id.fromJson(json['id'] as Map<String, dynamic>),
      picture: json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String?,
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'login': instance.login,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'id': instance.id,
      'picture': instance.picture,
      'nat': instance.nat,
    };
