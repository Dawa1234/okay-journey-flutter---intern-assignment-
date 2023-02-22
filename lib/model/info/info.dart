import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  String? seed;
  int? results;
  int? page;
  String? version;

  Info({
    this.seed,
    this.results,
    this.page,
    this.version,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
