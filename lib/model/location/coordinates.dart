import 'package:json_annotation/json_annotation.dart';

part 'coordinates.g.dart';

@JsonSerializable()
class CoordinatesModel {
  String? latitude;
  String? longitude;

  CoordinatesModel({this.longitude, this.latitude});

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);
}
