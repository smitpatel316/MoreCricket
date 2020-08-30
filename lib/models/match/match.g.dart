// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Match _$MatchFromJson(Map<String, dynamic> json) {
  return Match(
    json['url'] == null
        ? null
        : Url.fromJson(json['url'] as Map<String, dynamic>),
    json['match_id'] as String,
    json['series_id'] as String,
    json['series_name'] as String,
    json['data_path'] as String,
    json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    json['alerts'] as String,
    json['venue'] == null
        ? null
        : Venue.fromJson(json['venue'] as Map<String, dynamic>),
    json['official'] == null
        ? null
        : Official.fromJson(json['official'] as Map<String, dynamic>),
    json['toss'] == null
        ? null
        : Toss.fromJson(json['toss'] as Map<String, dynamic>),
    json['team1'] == null
        ? null
        : Team.fromJson(json['team1'] as Map<String, dynamic>),
    json['team2'] == null
        ? null
        : Team.fromJson(json['team2'] as Map<String, dynamic>),
    (json['players'] as List)
        ?.map((e) =>
            e == null ? null : Player.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['api'] == null
        ? null
        : Apis.fromJson(json['api'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'url': instance.url?.toJson(),
      'match_id': instance.matchId,
      'series_id': instance.seriesId,
      'series_name': instance.seriesName,
      'data_path': instance.dataPath,
      'header': instance.header?.toJson(),
      'alerts': instance.alerts,
      'venue': instance.venue?.toJson(),
      'official': instance.official?.toJson(),
      'toss': instance.toss?.toJson(),
      'team1': instance.team1?.toJson(),
      'team2': instance.team2?.toJson(),
      'players': instance.players?.map((e) => e?.toJson())?.toList(),
      'api': instance.api?.toJson(),
    };
