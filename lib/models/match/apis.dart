import 'package:json_annotation/json_annotation.dart';

part 'apis.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Apis {
  @JsonKey(required: false)
  String pointsTable;
  @JsonKey(required: false)
  String commentary;
  @JsonKey(required: false)
  String scorecard;
  @JsonKey(required: false)
  String mini;
  @JsonKey(required: false)
  String overCommentary;
  @JsonKey(required: false)
  String highlights;
  @JsonKey(required: false)
  String miniHighlights;
  @JsonKey(required: false)
  String graphs;
  @JsonKey(required: false)
  String leanback;
  @JsonKey(required: false)
  String matchfacts;
  @JsonKey(required: false)
  String country;
  @JsonKey(required: false)
  String expert;

  Apis(
      this.pointsTable,
      this.commentary,
      this.scorecard,
      this.mini,
      this.overCommentary,
      this.highlights,
      this.miniHighlights,
      this.graphs,
      this.leanback,
      this.matchfacts,
      this.country,
      this.expert);
  factory Apis.fromJson(Map<String, dynamic> json) => _$ApisFromJson(json);

  Map<String, dynamic> toJson() => _$ApisToJson(this);
}
