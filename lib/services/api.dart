import 'dart:convert';

import 'package:http/http.dart';
import 'package:more_cricket/models/livematches/livematches.dart';
import 'package:more_cricket/models/match/match.dart';

class ApiService {
  static final ApiService _apiService = new ApiService._internal();

  final String matchEndpoint = "https://mapps.cricbuzz.com/cbzios/match/";
  final String liveMatchesEndpoint =
      "https://mapps.cricbuzz.com/cbzios/match/livematches";

  static List<Match> liveMatches;

  factory ApiService() {
    return _apiService;
  }
  Future<Match> getMatch(String matchId) async {
    Response res = await get("$matchEndpoint$matchId");
    return Match.fromJson(jsonDecode(res.body));
  }

  Future updateLiveMatches() async {
    Response res = await get(liveMatchesEndpoint);
    liveMatches = LiveMatches.fromJson(jsonDecode(res.body)).matches;
  }

  Future<List<Match>> getLiveMatches() async {
    if (liveMatches == null) {
      await _apiService.updateLiveMatches();
    }
    return liveMatches;
  }

  ApiService._internal();
}
