// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) {
  return Team(
    json['id'] as String,
    json['name'] as String,
    json['s_name'] as String,
    (json['squad'] as List)?.map((e) => e as int)?.toList(),
    (json['squad_bench'] as List)?.map((e) => e as int)?.toList(),
    json['flag'] as String,
  );
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      's_name': instance.sName,
      'squad': instance.squad,
      'squad_bench': instance.squadBench,
      'flag': instance.flag,
    };
