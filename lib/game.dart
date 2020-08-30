import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  final String matchId;
  const Game({Key key, this.matchId}) : super(key: key);
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(widget.matchId));
  }
}
