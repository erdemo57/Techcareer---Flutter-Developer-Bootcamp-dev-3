import 'package:flutter/material.dart';
import 'package:odev3/disney.dart';
import 'package:odev3/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({super.key});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)! ;
    var ekranBilgisi = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: anaRenk,
        appBar:AppBar(title: Text(d.appBarbaslikLogin),),
        body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Image.asset("resimler/5.png"),
            Text(d.girisEkraniAciklamaone,style: TextStyle(fontSize:22,color: yaziRenk2,),),
            Text(d.girisEkraniAciklamatwo,style: TextStyle(fontSize:12,color: yaziRenk2,),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute (builder: (context) =>const DisneyHomePage()));
            }, child: Text(d.loginButon))

          ],
    ),),
    );


  }
}
