import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: Ka(),
));

class Ka extends StatefulWidget {
  const Ka({super.key});

  @override
  State<Ka> createState() => _KaState();
}

class _KaState extends State<Ka> {
  String _text = "ka";
  final player = AudioPlayer();

/*  void _a() {
    setState(() {
      _text = "ka";
    });
  }
  void _e() {
    setState(() {
      _text = "ke";
    });
  }
  void _i() {
    setState(() {
      _text = "ki";
    });
  }
  void _o() {
    setState(() {
      _text = "ko";
    });
  }
  void _u() {
    setState(() {
      _text = "ku";
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
                      'ka',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(width: 20), // Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_e,
                    child: AutoSizeText(
                      'ke',
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
                    onPressed: play_i,
                    child: AutoSizeText(
                      'ki',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.teal,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_o,
                    child: AutoSizeText(
                      'ko',
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
                    onPressed: play_u,
                    child: AutoSizeText(
                      'ku',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.deepOrange,
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
    await audioPlayer.play(AssetSource('ka.mp3'));
    setState(() {
      _text = "ka";
    });
  }
  void play_e() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ke.mp3'));
    setState(() {
      _text = "ke";
    });
  }
  void play_i() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ki.mp3'));
    setState(() {
      _text = "ki";
    });
  }
  void play_o() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ko.mp3'));
    setState(() {
      _text = "ko";
    });
  }
  void play_u() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ku.mp3'));
    setState(() {
      _text = "ku";
    });
  }
}
