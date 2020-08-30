// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apis _$ApisFromJson(Map<String, dynamic> json) {
  return Apis(
    json['points_table'] as String,
    json['commentary'] as String,
    json['scorecard'] as String,
    json['mini'] as String,
    json['over_commentary'] as String,
    json['highlights'] as String,
    json['mini_highlights'] as String,
    json['graphs'] as String,
    json['leanback'] as String,
    json['matchfacts'] as String,
    json['country'] as String,
    json['expert'] as String,
  );
}

Map<String, dynamic> _$ApisToJson(Apis instance) => <String, dynamic>{
      'points_table': instance.pointsTable,
      'commentary': instance.commentary,
      'scorecard': instance.scorecard,
      'mini': instance.mini,
      'over_commentary': instance.overCommentary,
      'highlights': instance.highlights,
      'mini_highlights': instance.miniHighlights,
      'graphs': instance.graphs,
      'leanback': instance.leanback,
      'matchfacts': instance.matchfacts,
      'country': instance.country,
      'expert': instance.expert,
    };
