import 'package:json_annotation/json_annotation.dart';

part 'toss.g.dart';

@JsonSerializable()
class Toss {
  String winner;
  String decision;

  Toss(this.winner, this.decision);

  factory Toss.fromJson(Map<String, dynamic> json) => _$TossFromJson(json);

  Map<String, dynamic> toJson() => _$TossToJson(this);
}
