import 'package:json_annotation/json_annotation.dart';
import 'package:more_cricket/models/match/apis.dart';
import 'package:more_cricket/models/match/header.dart';
import 'package:more_cricket/models/match/official.dart';
import 'package:more_cricket/models/match/player.dart';
import 'package:more_cricket/models/match/team.dart';
import 'package:more_cricket/models/match/toss.dart';
import 'package:more_cricket/models/match/url.dart';
import 'package:more_cricket/models/match/venue.dart';

part 'match.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Match {
  Url url;
  String matchId;
  String seriesId;
  String seriesName;
  String dataPath;
  Header header;
  String alerts;
  Venue venue;
  Official official;
  Toss toss;
  @JsonKey(ignore: true)
  String audio;
  Team team1;
  Team team2;
  List<Player> players;
  Apis api;
  @JsonKey(ignore: true)
  List<dynamic> ads;

  Match(
      this.url,
      this.matchId,
      this.seriesId,
      this.seriesName,
      this.dataPath,
      this.header,
      this.alerts,
      this.venue,
      this.official,
      this.toss,
      this.team1,
      this.team2,
      this.players,
      this.api);

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}
