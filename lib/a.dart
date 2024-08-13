import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/services.dart';

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(A());
  });
}*/

void main() => runApp(MaterialApp(
  title: "App",
  home: A(),
));

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  String _text = "a";
  final player = AudioPlayer();


/*  void _a() {
    setState(() {
      _text = "a";
    });
  }
  void _e() {
    setState(() {
      _text = "e";
    });
  }
  void _i() {
    setState(() {
      _text = "i";
    });
  }
  void _o() {
    setState(() {
      _text = "o";
    });
  }
  void _u() {
    setState(() {
      _text = "u";
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
                Expanded(child:  FloatingActionButton.large(
                  onPressed: playsound,
                  child: AutoSizeText(
                    'a',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.purple,
                ), ),


                SizedBox(width: 30), // Spacer
                Expanded(child:    FloatingActionButton.large(
                  onPressed: play_e,
                  child: AutoSizeText(
                    'e',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.green,
                ),),

                SizedBox(width: 30), // Spacer
                Expanded(child:  FloatingActionButton.large(
                  onPressed: play_i,
                  child: AutoSizeText(
                    'i',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.purple,
                ), ),

                SizedBox(width: 30),
                Expanded(child:  FloatingActionButton.large(
                  onPressed: play_o,
                  child: AutoSizeText(
                    'o',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.deepOrange,
                ), ),

                SizedBox(width: 30),
                Expanded(child:
                FloatingActionButton.large(
                  onPressed: play_u,
                  child: AutoSizeText(
                    'u',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.blue,
                ), ),
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
    await audioPlayer.play(AssetSource('a.mp3'));
    setState(() {
      _text = "a";
    });
  }
  void play_e() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('e.mp3'));
    setState(() {
      _text = "e";
    });
  }
  void play_i() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('i.mp3'));
    setState(() {
      _text = "i";
    });
  }
  void play_o() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('o.mp3'));
    setState(() {
      _text = "o";
    });
  }
  void play_u() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('u.mp3'));
    setState(() {
      _text = "u";
    });
  }
}

