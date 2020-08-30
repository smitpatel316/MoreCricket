// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livematches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveMatches _$LiveMatchesFromJson(Map<String, dynamic> json) {
  return LiveMatches(
    json['url'] == null
        ? null
        : Url.fromJson(json['url'] as Map<String, dynamic>),
    (json['matches'] as List)
        ?.map(
            (e) => e == null ? null : Match.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LiveMatchesToJson(LiveMatches instance) =>
    <String, dynamic>{
      'url': instance.url?.toJson(),
      'matches': instance.matches?.map((e) => e?.toJson())?.toList(),
    };
