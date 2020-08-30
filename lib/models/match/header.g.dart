// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return Header(
    json['start_time'] as String,
    json['end_time'] as String,
    json['state'] as String,
    json['match_desc'] as String,
    json['type'] as String,
    json['state_title'] as String,
    json['toss'] as String,
    json['status'] as String,
  )..timeDiff = json['timeDiff'] as String;
}

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
      'timeDiff': instance.timeDiff,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'state': instance.state,
      'match_desc': instance.matchDesc,
      'type': instance.type,
      'state_title': instance.stateTitle,
      'toss': instance.toss,
      'status': instance.status,
    };
