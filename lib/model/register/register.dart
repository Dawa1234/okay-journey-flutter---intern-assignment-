import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class Register {
  String? date;
  int? age;

  Register({
    this.date,
    this.age,
  });

  factory Register.fromJson(Map<String, dynamic> json) =>
      _$RegisterFromJson(json);
}
