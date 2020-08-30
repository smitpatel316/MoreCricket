// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toss.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Toss _$TossFromJson(Map<String, dynamic> json) {
  return Toss(
    json['winner'] as String,
    json['decision'] as String,
  );
}

Map<String, dynamic> _$TossToJson(Toss instance) => <String, dynamic>{
      'winner': instance.winner,
      'decision': instance.decision,
    };
