import 'package:json_annotation/json_annotation.dart';

part 'header.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Header {
  @JsonKey(required: false, name: "timeDiff")
  String timeDiff;
  String startTime;
  String endTime;
  String state;
  String matchDesc;
  String type;
  String stateTitle;
  String toss;
  String status;

  Header(this.startTime, this.endTime, this.state, this.matchDesc, this.type,
      this.stateTitle, this.toss, this.status);

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}
