import 'package:json_annotation/json_annotation.dart';
import 'package:more_cricket/models/match/umpire.dart';

part 'official.g.dart';

@JsonSerializable(explicitToJson: true)
class Official {
  Umpire umpire1;
  Umpire umpire2;
  Umpire umpire3;
  Umpire referee;

  Official(this.umpire1, this.umpire2, this.umpire3);

  factory Official.fromJson(Map<String, dynamic> json) =>
      _$OfficialFromJson(json);

  Map<String, dynamic> toJson() => _$OfficialToJson(this);
}
