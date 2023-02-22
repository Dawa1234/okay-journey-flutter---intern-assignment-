// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordinatesModel _$CoordinatesModelFromJson(Map<String, dynamic> json) =>
    CoordinatesModel(
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$CoordinatesModelToJson(CoordinatesModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
