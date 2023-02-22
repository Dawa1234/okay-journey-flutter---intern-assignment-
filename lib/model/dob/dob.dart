import 'package:json_annotation/json_annotation.dart';

part 'dob.g.dart';

@JsonSerializable()
class DateOfBirth {
  String? date;
  int? age;

  DateOfBirth({this.date, this.age});

  factory DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthFromJson(json);
}
