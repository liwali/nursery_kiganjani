import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: Na(),
));

class Na extends StatefulWidget {
  const Na({super.key});

  @override
  State<Na> createState() => _NaState();
}

class _NaState extends State<Na> {
  String _text = "na";
  final player = AudioPlayer();
/*
  void _a() {
    setState(() {
      _text = "na";
    });
  }
  void _e() {
    setState(() {
      _text = "ne";
    });
  }
  void _i() {
    setState(() {
      _text = "ni";
    });
  }
  void _o() {
    setState(() {
      _text = "no";
    });
  }
  void _u() {
    setState(() {
      _text = "nu";
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rudi"),
        leading: SizedBox(
          height: 40, // Customize the height
          width: 40,  // Customize the width
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 40), // Customize the icon size
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FittedBox(
              alignment: Alignment.center,
              child: Text(
                _text,
                style: TextStyle(fontSize: 98),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: playsound,
                    child: AutoSizeText(
                      'na',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                SizedBox(width: 20), // Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_e,
                    child: AutoSizeText(
                      'ne',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.teal,
                  ),
                ),
                SizedBox(width: 20), // Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_i,
                    child: AutoSizeText(
                      'ni',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_o,
                    child: AutoSizeText(
                      'no',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.purple,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_u,
                    child: AutoSizeText(
                      'nu',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void playsound() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('na.mp3'));
    setState(() {
      _text = "na";
    });
  }
  void play_e() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ne.mp3'));
    setState(() {
      _text = "ne";
    });
  }
  void play_i() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ni.mp3'));
    setState(() {
      _text = "ni";
    });
  }
  void play_o() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('no.mp3'));
    setState(() {
      _text = "no";
    });
  }
  void play_u() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('nu.mp3'));
    setState(() {
      _text = "nu";
    });
  }
}
