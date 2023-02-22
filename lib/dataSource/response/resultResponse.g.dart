// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) => DataResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'info': instance.info,
    };
