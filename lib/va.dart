import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
  title: "App",
  home: Va(),
));

class Va extends StatefulWidget {
  const Va({super.key});

  @override
  State<Va> createState() => _VaState();
}

class _VaState extends State<Va> {
  String _text = "va";
  final player = AudioPlayer();

/*  void _a() {
    setState(() {
      _text = "va";
    });
  }
  void _e() {
    setState(() {
      _text = "ve";
    });
  }
  void _i() {
    setState(() {
      _text = "vi";
    });
  }
  void _o() {
    setState(() {
      _text = "vo";
    });
  }
  void _u() {
    setState(() {
      _text = "vu";
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
                      'va',
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
                      've',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                SizedBox(width: 20), // Spacer
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_i,
                    child: AutoSizeText(
                      'vi',
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: FloatingActionButton.large(
                    onPressed: play_o,
                    child: AutoSizeText(
                      'vo',
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
                      'vu',
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
    await audioPlayer.play(AssetSource('va.mp3'));
    setState(() {
      _text = "va";
    });
  }
  void play_e() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('ve.mp3'));
    setState(() {
      _text = "ve";
    });
  }
  void play_i() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('vi.mp3'));
    setState(() {
      _text = "vi";
    });
  }
  void play_o() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('vo.mp3'));
    setState(() {
      _text = "vo";
    });
  }
  void play_u() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('vu.mp3'));
    setState(() {
      _text = "vu";
    });
  }
}
