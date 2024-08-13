import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class Bibi extends StatefulWidget {
  @override
  _BibiState createState() => _BibiState();
}

class _BibiState extends State<Bibi> {
  @override
  void initState() {
    super.initState();
    // Pre-cache the image
    precacheMyImage(context, 'assets/image/bibi.png');
  }

  Future<void> precacheMyImage(BuildContext context, String imageUrl) async {
    try {
      final ImageProvider imageProvider = NetworkImage(imageUrl);
      await precacheImage(imageProvider, context);
      print('Image pre-cached successfully');
    } catch (e) {
      print('Error pre-caching image: $e');
    }
  }

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
                  onPressed: (){
                  },
                  child: AutoSizeText(
                    'bibi',
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
  void playsound() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('a.mp3'));
  }
}
class ImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        print('buibui');
      },
      child: Image.asset('assets/images/bibi.png',
        /* width: 200,
        height: 200,*/
        fit: BoxFit.cover,
      ),
    );
  }
}





/*
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(Bibi());
}

class Bibi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//precacheImage(AssetImage("assets/images/bibi.png"), context);

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
                  onPressed: (){
                  },
                  child: AutoSizeText(
                    'bibi',
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
  void playsound() async {
    AudioPlayer audioPlayer=AudioPlayer();
    await audioPlayer.play(AssetSource('a.mp3'));
  }
}

class ImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        print('bibi');
      },
   */
/*   child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bibi.png'),
            fit: BoxFit.cover, // Change this to fit the image as you want
          ),
        ),
      ),*//*

      child: Image.asset('assets/images/bibi.png',
        */
/*width: 250,
        height: 200,*//*

        fit: BoxFit.cover,
      ),
    );
  }
}
*/
