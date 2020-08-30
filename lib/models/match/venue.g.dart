// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return Venue(
    json['name'] as String,
    json['location'] as String,
    json['timezone'] as String,
    json['lat'] as String,
    json['long'] as String,
  );
}

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'timezone': instance.timezone,
      'lat': instance.lat,
      'long': instance.long,
    };
