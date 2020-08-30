import 'package:json_annotation/json_annotation.dart';

part 'umpire.g.dart';

@JsonSerializable()
class Umpire {
  String id;
  String name;
  String country;

  Umpire(this.id, this.name, this.country);

  factory Umpire.fromJson(Map<String, dynamic> json) => _$UmpireFromJson(json);

  Map<String, dynamic> toJson() => _$UmpireToJson(this);
}
