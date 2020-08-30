import 'package:json_annotation/json_annotation.dart';
import 'package:more_cricket/models/match/url.dart';
import 'package:more_cricket/models/match/match.dart';

part 'livematches.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class LiveMatches {
  Url url;
  List<Match> matches;
  @JsonKey(name: "srs_category", ignore: true)
  List<dynamic> srsCategory;

  LiveMatches(this.url, this.matches);
  factory LiveMatches.fromJson(Map<String, dynamic> json) =>
      _$LiveMatchesFromJson(json);

  Map<String, dynamic> toJson() => _$LiveMatchesToJson(this);
}
