import 'package:intern_assignment/model/info/info.dart';
import 'package:intern_assignment/model/results/result.dart';
import 'package:json_annotation/json_annotation.dart';
part 'resultResponse.g.dart';

@JsonSerializable()
class DataResponse {
  List<Results>? results;
  Info? info;

  DataResponse({this.results, this.info});

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}
