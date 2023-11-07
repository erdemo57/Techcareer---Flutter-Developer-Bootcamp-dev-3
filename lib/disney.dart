import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisneyHomePage extends StatefulWidget {
  const DisneyHomePage({super.key});

  @override
  State<DisneyHomePage> createState() => _DisneyHomePageState();
}

class _DisneyHomePageState extends State<DisneyHomePage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)! ;
    var ekranBilgisi = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: anaRenk ,
      appBar: AppBar(title:  Text(d.appBarTitle,
      style: TextStyle(color: yaziRenk2, fontFamily: "Pacifico", fontSize: 22),),
      centerTitle: true,
      backgroundColor: anaRenk,
      actions: [

      ],),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //IconButton(onPressed: (){}, icon: const Icon(Icons.search))
                  Chip(icerik: d.hepsiYazi,),
                  Chip(icerik: d.aksiyonYazi,),
                  Chip(icerik: d.komediYazi,),
                  Chip(icerik: d.dramaYazi,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset("resimler/1.png"),
                  Image.asset("resimler/2.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(d.filmbaslik, style: TextStyle(color: yaziRenk1),),
                  ElevatedButton(onPressed: (){}, child: Text(d.herSeyiGor)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("resimler/3.png"),
                  Column(
                    children: [
                      Text(d.filmad,style: TextStyle(color: yaziRenk1),),
                      Text(d.filmturu,style: TextStyle(color: yaziRenk1)),
                      Text(d.filmrating,style: TextStyle(color: yaziRenk1)),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined,color: yaziRenk1,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("resimler/4.png"),
                  Column(
                    children: [
                      Text(d.filmismi,style: TextStyle(color: yaziRenk1),),
                      Text(d.filmturu,style: TextStyle(color: yaziRenk1)),
                      Text(d.filmpuani,style: TextStyle(color: yaziRenk1)),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_outlined,color: yaziRenk1,))
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}


