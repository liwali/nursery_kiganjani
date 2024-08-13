import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nursery_kiganjani/ba.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery_kiganjani/bibi.dart';
import 'package:nursery_kiganjani/a.dart';
import 'package:nursery_kiganjani/buibui.dart';
import 'package:nursery_kiganjani/da.dart';
import 'package:nursery_kiganjani/fa.dart';
import 'package:nursery_kiganjani/ga.dart';
import 'package:nursery_kiganjani/ha.dart';
import 'package:nursery_kiganjani/ja.dart';
import 'package:nursery_kiganjani/jogoo.dart';
import 'package:nursery_kiganjani/ka.dart';
import 'package:nursery_kiganjani/keki.dart';
import 'package:nursery_kiganjani/kijiko.dart';
import 'package:nursery_kiganjani/kobe.dart';
import 'package:nursery_kiganjani/la.dart';
import 'package:nursery_kiganjani/main.dart';
import 'package:nursery_kiganjani/meli.dart';
import 'package:nursery_kiganjani/mtoto.dart';
import 'package:nursery_kiganjani/na.dart';
import 'package:nursery_kiganjani/pa.dart';
import 'package:nursery_kiganjani/paka.dart';
import 'package:nursery_kiganjani/ra.dart';
import 'package:nursery_kiganjani/redio.dart';
import 'package:nursery_kiganjani/reli.dart';
import 'package:nursery_kiganjani/sa.dart';
import 'package:nursery_kiganjani/ma.dart';
import 'package:nursery_kiganjani/saa.dart';
import 'package:nursery_kiganjani/taa.dart';
import 'package:nursery_kiganjani/ua.dart';
import 'package:nursery_kiganjani/ta.dart';
import 'package:nursery_kiganjani/va.dart';
import 'package:nursery_kiganjani/viatu.dart';
import 'package:nursery_kiganjani/wa.dart';
import 'package:nursery_kiganjani/ya.dart';
import 'package:nursery_kiganjani/za.dart';
import 'package:nursery_kiganjani/zawadi.dart';


void main() => runApp(MaterialApp(
  title: "App",
  home: Herufi(),
));



class Herufi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   /*   appBar: AppBar(
        title: Text('Herufi'),
        automaticallyImplyLeading: true, // This will add a default back button
      ),*/
      appBar: AppBar(
        title: Text("Rudi"),
        leading: SizedBox(
          height: 40, // Customize the height
          width: 40,  // Customize the width
          child: IconButton(
            icon: Icon(Icons.home, size: 40), // Customize the icon size
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },
          ),
        ),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,mainAxisSpacing: 10,crossAxisSpacing: 10),children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>A())
              );
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.home,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/uaa.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("a",style: TextStyle(color: Colors.white,fontSize: 48),
                  minFontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ba()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Icon(Icons.search,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/baba.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ba",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Da()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Icon(Icons.settings,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/dada.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("da",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Fa()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/fagio.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("fa",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ga()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/vehicle.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ga",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ha()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/hodi.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ha",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ja()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/jogoo.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ja",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ka()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/kiatu.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ka",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>La()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/lala.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("la",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ma()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/meli.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ma",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Na()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/nokia.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("na",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Pa()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/popo.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("pa",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ra()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.indigo,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/rula.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ra",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sa()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/saa.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("sa",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ta()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/taaa.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ta",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Va()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.teal,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/viti.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("va",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Wa()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/mtoto.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("wa",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ya()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/egg.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("ya",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Za()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurpleAccent,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.book,size: 50,color: Colors.white,),
                  SizedBox(height: 20),
                  Expanded(child: SvgPicture.asset('assets/icons/zabibu.svg',color: Colors.white,)),
                  Expanded(child: AutoSizeText("za",style: TextStyle(color: Colors.white,fontSize: 48),))
                ],),
            ),
          ),
        ],
        ),
      ),),
    );
  }
}
