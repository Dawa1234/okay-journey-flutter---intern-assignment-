import 'package:intern_assignment/model/location/coordinates.dart';
import 'package:intern_assignment/model/location/street.dart';
import 'package:intern_assignment/model/location/timezone.dart';
import 'package:json_annotation/json_annotation.dart';
part 'location.g.dart';

@JsonSerializable()
class LocationModel {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  CoordinatesModel? coordinates;
  Timezone? timezone;

  LocationModel({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
