// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(
    json['id'] as String,
    json['f_name'] as String,
    json['name'] as String,
    json['bat_style'] as String,
    json['bowl_style'] as String,
    json['role'] as String,
    json['speciality'] as String,
    json['image'] as String,
  );
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'f_name': instance.fName,
      'name': instance.name,
      'bat_style': instance.batStyle,
      'bowl_style': instance.bowlStyle,
      'role': instance.role,
      'speciality': instance.speciality,
      'image': instance.image,
    };
