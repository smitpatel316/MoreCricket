import 'package:flutter/material.dart';
import 'package:more_cricket/game.dart';
import 'package:more_cricket/models/livematches/livematches.dart';
import 'package:more_cricket/models/match/match.dart';
import 'package:more_cricket/service_locator.dart';
import 'package:more_cricket/services/api.dart';

void main() {
  initServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'More Cricket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Match> liveMatches = [];
  @override
  void initState() {
    super.initState();
    updateMatches();
  }

  updateMatches() async {
    List<Match> matches = await sl.get<ApiService>().getLiveMatches();
    setState(() {
      this.liveMatches = matches;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.liveMatches?.length ?? 0,
      itemBuilder: (context, index) {
        final match = this.liveMatches[index];
        return Card(
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Game(matchId: match.matchId)));
                },
                child: ListTile(
                  title: Text(match.seriesName),
                  subtitle: Text(
                      "${match.header.matchDesc}, ${match.team1.sName} vs ${match.team2.sName}\n${match.header.status}"),
                )));
      },
    );
  }
}
