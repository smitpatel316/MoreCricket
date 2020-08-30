// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'official.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Official _$OfficialFromJson(Map<String, dynamic> json) {
  return Official(
    json['umpire1'] == null
        ? null
        : Umpire.fromJson(json['umpire1'] as Map<String, dynamic>),
    json['umpire2'] == null
        ? null
        : Umpire.fromJson(json['umpire2'] as Map<String, dynamic>),
    json['umpire3'] == null
        ? null
        : Umpire.fromJson(json['umpire3'] as Map<String, dynamic>),
  )..referee = json['referee'] == null
      ? null
      : Umpire.fromJson(json['referee'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OfficialToJson(Official instance) => <String, dynamic>{
      'umpire1': instance.umpire1?.toJson(),
      'umpire2': instance.umpire2?.toJson(),
      'umpire3': instance.umpire3?.toJson(),
      'referee': instance.referee?.toJson(),
    };
