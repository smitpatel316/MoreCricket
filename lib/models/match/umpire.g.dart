// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'umpire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Umpire _$UmpireFromJson(Map<String, dynamic> json) {
  return Umpire(
    json['id'] as String,
    json['name'] as String,
    json['country'] as String,
  );
}

Map<String, dynamic> _$UmpireToJson(Umpire instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
    };
