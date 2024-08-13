import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: Ra(),
));

class Ra extends StatefulWidget {
  const Ra({super.key});

  @override
  State<Ra> createState() => _RaState();
}

class _RaState extends State<Ra> {
  String _text = "ra";
  final player = AudioPlayer();

 /* void _a() {
    setState(() {
      _text = "ra";
    });
  }
  void _e() {
    setState(() {
      _text = "re";
    });
  }
  void _i() {
    setState(() {
      _text = "ri";
    });
  }
  void _o() {
    setState(() {
      _text = "ro";
    });
  }
  void _u() {
    setState(() {
      _text = "ru";
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
                      'ra',
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
                      're',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.indigo,
                  ),
                ),
                SizedBox(width: 20), // Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_i,
                    child: AutoSizeText(
                      'ri',
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
                    onPressed: play_o,
                    child: AutoSizeText(
                      'ro',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.indigo,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_u,
                    child: AutoSizeText(
                      'ru',
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
    await audioPlayer.play(AssetSource('ra.mp3'));
    setState(() {
      _text = "ra";
    });
  }
  void play_e() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('re.mp3'));
    setState(() {
      _text = "re";
    });
  }
  void play_i() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ri.mp3'));
    setState(() {
      _text = "ri";
    });
  }
  void play_o() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ro.mp3'));
    setState(() {
      _text = "ro";
    });
  }
  void play_u() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ru.mp3'));
    setState(() {
      _text = "ru";
    });
  }
}
