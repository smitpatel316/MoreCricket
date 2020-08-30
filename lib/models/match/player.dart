import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Player {
  String id;
  String fName;
  String name;
  @JsonKey(required: false)
  String batStyle;
  @JsonKey(required: false)
  String bowlStyle;
  @JsonKey(required: false)
  String role;
  String speciality;
  String image;

  Player(this.id, this.fName, this.name, this.batStyle, this.bowlStyle,
      this.role, this.speciality, this.image);
  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
