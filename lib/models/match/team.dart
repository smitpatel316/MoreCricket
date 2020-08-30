import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  String id;
  String name;
  @JsonKey(name: 's_name')
  String sName;
  @JsonKey(required: false)
  List<int> squad;
  @JsonKey(name: 'squad_bench', required: false)
  List<int> squadBench;
  @JsonKey(name: 'flag', required: false)
  String flag;

  Team(this.id, this.name, this.sName, this.squad, this.squadBench, this.flag);

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
