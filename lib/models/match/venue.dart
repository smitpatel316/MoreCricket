import 'package:json_annotation/json_annotation.dart';

part 'venue.g.dart';

@JsonSerializable()
class Venue {
  String name;
  String location;
  String timezone;
  String lat;
  String long;

  Venue(this.name, this.location, this.timezone, this.lat, this.long);

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);
}
