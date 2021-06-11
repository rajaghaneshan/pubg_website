import 'package:flutter/material.dart';
import 'package:pubg_website/constants.dart';
import 'package:pubg_website/home/components/available_matches.dart';
import 'package:pubg_website/home/components/footer.dart';
import 'package:pubg_website/home/components/join_contest.dart';
import 'package:pubg_website/home/components/posters.dart';
import 'package:pubg_website/responsive.dart';

import 'home/components/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUBG COMBAT',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: kBgColor,
        image: DecorationImage(
          image: AssetImage('assets/images/bgImage.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black.withOpacity(0.6),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Header(),
                JoinContest(),
                Posters(),
                AvailableMatches(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

