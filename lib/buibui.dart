import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(Buibui());
}

class Buibui extends StatelessWidget {
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
            children: <Widget>[
              SizedBox(height: 20,),
              Expanded(child: ImageButton()),
              SizedBox(height: 20,),
              SizedBox(
                width: 200, // Set the desired width
                height: 50, // Set the desired height
                child:   FloatingActionButton.large(
                  onPressed: () async {
                    AudioPlayer audioPlayer=AudioPlayer();
                    await audioPlayer.play(AssetSource('buibui.mp3'));
                  },
                  child: AutoSizeText(
                    'buibui',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.purple,
                ),
              ),
              SizedBox(height: 20,)
            ]),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() async {
        AudioPlayer audioPlayer=AudioPlayer();
        await audioPlayer.play(AssetSource('buibui.mp3'));
      },
      child: Image.asset('assets/images/buibui.png',
       /* width: 200,
        height: 200,*/
        fit: BoxFit.cover,
      ),
    );
  }
}
