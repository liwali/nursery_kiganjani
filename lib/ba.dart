import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: Ba(),
));

class Ba extends StatefulWidget {
  const Ba({super.key});

  @override
  State<Ba> createState() => _BaState();
}

class _BaState extends State<Ba> {
  String _text = "ba";
  final player = AudioPlayer();

/*  void _a() {
    setState(() {
      _text = "ba";
    });
  }
  void _e() {
    setState(() {
      _text = "be";
    });
  }
  void _i() {
    setState(() {
      _text = "bi";
    });
  }
  void _o() {
    setState(() {
      _text = "bo";
    });
  }
  void _u() {
    setState(() {
      _text = "bu";
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
                      'ba',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                ),
                SizedBox(width: 30), // Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_e,
                    child: AutoSizeText(
                      'be',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(width: 30),// Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_i,
                    child: AutoSizeText(
                      'bi',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.indigo,
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_o,
                    child: AutoSizeText(
                      'bo',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.purple,
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_u,
                    child: AutoSizeText(
                      'bu',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.blue,
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
    await audioPlayer.play(AssetSource('ba.mp3'));
    setState(() {
      _text = "ba";
    });
  }
  void play_e() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('be.mp3'));
    setState(() {
      _text = "be";
    });
  }
  void play_i() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('bi.mp3'));
    setState(() {
      _text = "bi";
    });
  }
  void play_o() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('bo.mp3'));
    setState(() {
      _text = "bo";
    });
  }
  void play_u() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('bu.mp3'));
    setState(() {
      _text = "bu";
    });
  }
}

