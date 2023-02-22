import 'package:intern_assignment/model/dob/dob.dart';
import 'package:intern_assignment/model/id/id.dart';
import 'package:intern_assignment/model/location/location.dart';
import 'package:intern_assignment/model/login/login.dart';
import 'package:intern_assignment/model/name/name.dart';
import 'package:intern_assignment/model/pictures/picture.dart';
import 'package:intern_assignment/model/register/register.dart';
import 'package:json_annotation/json_annotation.dart';
part 'result.g.dart';

@JsonSerializable()
class Results {
  String? gender;
  Name? name;
  LocationModel? location;
  String? email;
  Login? login;
  DateOfBirth? dob;
  Register? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Results({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
