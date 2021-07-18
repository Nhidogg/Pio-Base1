import 'package:easy_dialog/easy_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'aedon1.dart';
import 'chiguaco.dart';
import 'giga.dart';
import 'punensis.dart';
import 'spoagra.dart';
import 'zonotrichia.dart';
import 'package:url_launcher/url_launcher.dart';
import 'acerca.dart';
import 'alka.dart';
import 'azulejo.dart';
import 'gavio.dart';
import 'torcaza.dart';
import 'libia.dart';
import 'coruscans.dart';
import 'dart:async';

class Contador extends StatefulWidget{
  @override
  _Contador createState()=> new _Contador();
 Contador({Key key, this.title}) : super(key: key);
  final String title;





}


class _Contador extends State<Contador>{

  // TODO: implement widget
  @override
  int _counter = 0;
  int a=0,b=0;

  AssetsAudioPlayer _assetsAudioPlayer;
 // AnimationController _animationController;
  bool isPlaying = false;
  AnimationController _animationController;
  int _ave1= 0,_ave2 = 0,_ave3 = 0, _ave4 = 0, _ave5 = 0,_ave6 = 0,_ave7 = 0,_ave8 = 0,_ave9 = 0,_ave10 = 0,_ave11 = 0,_ave12 = 0;
  void dispose() {
   // controller.dispose();
    super.dispose();
    _stop();
    _assetsAudioPlayer.dispose();
      //   _animationController.dispose();

  }

  void _playPause() {

      _assetsAudioPlayer.playOrPause();
  }

  void _stop(){
    _assetsAudioPlayer.stop();

  }
  _launchURL() async{
    const url='https://www.red-o2.org';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'No se puede mostrar $url';
    }

  }
  void initState() {
    super.initState();
    _loadCounter();
    _assetsAudioPlayer = AssetsAudioPlayer();
    //_animationController= new AnimationController(duration: Duration(seconds: 1), debugLabel: "true");
  }


  @override


  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
      _ave1= (prefs.getInt('ave1') ?? 0);
      _ave2= (prefs.getInt('ave2') ?? 0);
      _ave3= (prefs.getInt('ave3') ?? 0);
      _ave4= (prefs.getInt('ave4') ?? 0);
      _ave5= (prefs.getInt('ave5') ?? 0);
      _ave6= (prefs.getInt('ave6') ?? 0);
      _ave7= (prefs.getInt('ave7') ?? 0);
      _ave8= (prefs.getInt('ave8') ?? 0);
      _ave9= (prefs.getInt('ave9') ?? 0);
      _ave10= (prefs.getInt('ave10') ?? 0);
      _ave11= (prefs.getInt('ave11') ?? 0);
      _ave12= (prefs.getInt('ave12') ?? 0);

    });
    EasyDialog(
        cardColor: Colors.transparent,
        width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.height*0.8,
        topImage: AssetImage("assets/img/pios2.png",  ),

        title: Text("", style: TextStyle(
          color: Colors.white70,
          fontSize: MediaQuery.of(context).size.width*0.05,
          fontFamily: 'Metroregular',
        ),),
        description: Text("1) Añade tu avistamiento en el botón '+' .\n2) Si deseas anular un registro presiona el botón '-'.\n3) Toca las fotos para escuchar sus vocalizaciones.", style: TextStyle(
          color: Colors.white70,
          fontSize: MediaQuery.of(context).size.width*0.045,
          fontFamily: 'Metroregular',
        ),)).show(context);
  }
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }
  // Contador de aves 1
  _incrementCounter1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave1 = (prefs.getInt('ave1') ?? 0) + 1;
      prefs.setInt('ave1', _ave1);
    });
  }

  _incrementCounter11() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave1 = (prefs.getInt('ave1') ?? 0) - 1;
      prefs.setInt('ave1', _ave1);
    });

  }
  // Contador de aves 2
  _incrementCounter2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave2 = (prefs.getInt('ave2') ?? 0) + 1;
      prefs.setInt('ave2', _ave2);
    });
  }

  _incrementCounter22() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave2 = (prefs.getInt('ave2') ?? 0) - 1;
      prefs.setInt('ave2', _ave2);
    });

  }

  // Contador de aves 3
  _incrementCounter3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave3 = (prefs.getInt('ave3') ?? 0) + 1;
      prefs.setInt('ave3', _ave3);
    });
  }

  _incrementCounter33() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave3 = (prefs.getInt('ave3') ?? 0) - 1;
      prefs.setInt('ave3', _ave3);
    });

  }
  // Contador de aves 4
  _incrementCounter4() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave4 = (prefs.getInt('ave4') ?? 0) + 1;
      prefs.setInt('ave4', _ave4);
    });
  }

  _incrementCounter44() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave4 = (prefs.getInt('ave4') ?? 0) - 1;
      prefs.setInt('ave4', _ave4);
    });


  }

  // Contador de aves 5
  _incrementCounter5() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave5 = (prefs.getInt('ave5') ?? 0) + 1;
      prefs.setInt('ave5', _ave5);
    });
  }

  _incrementCounter55() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {

      _ave5 = (prefs.getInt('ave5') ?? 0) - 1;
      prefs.setInt('ave5', _ave5);
    });

  }

  // Contador de aves 6
  _incrementCounter6() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave6 = (prefs.getInt('ave6') ?? 0) + 1;
      prefs.setInt('ave6', _ave6);
    });
  }

  _incrementCounter66() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave6 = (prefs.getInt('ave6') ?? 0) - 1;
      prefs.setInt('ave6', _ave6);
    });

  }

  // Contador de aves 7
  _incrementCounter7() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave7 = (prefs.getInt('ave7') ?? 0) + 1;
      prefs.setInt('ave7', _ave7);
    });
  }

  _incrementCounter77() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave7 = (prefs.getInt('ave7') ?? 0) - 1;
      prefs.setInt('ave7', _ave7);
    });

  }
  // Contador de aves 8
  _incrementCounter8() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave8 = (prefs.getInt('ave8') ?? 0) + 1;
      prefs.setInt('ave8', _ave8);
    });
  }

  _incrementCounter88() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave8 = (prefs.getInt('ave8') ?? 0) - 1;
      prefs.setInt('ave8', _ave8);
    });

  }
  // Contador de aves 9
  _incrementCounter9() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave9 = (prefs.getInt('ave9') ?? 0) + 1;
      prefs.setInt('ave9', _ave9);
    });
  }

  _incrementCounter99() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave9 = (prefs.getInt('ave9') ?? 0) - 1;
      prefs.setInt('ave9', _ave9);
    });

  }
  // Contador de aves 10
  _incrementCounter10() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave10 = (prefs.getInt('ave10') ?? 0) + 1;
      prefs.setInt('ave10', _ave10);
    });
  }

  _incrementCounter100() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave10= (prefs.getInt('ave10') ?? 0) - 1;
      prefs.setInt('ave10', _ave10);
    });

  }

  // Contador de aves 11
  _incrementCounter111() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave11 = (prefs.getInt('ave11') ?? 0) + 1;
      prefs.setInt('ave11', _ave11);
    });
  }

  _incrementCounter1111() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave11 = (prefs.getInt('ave11') ?? 0) - 1;
      prefs.setInt('ave11', _ave11);
    });

  }
  // Contador de aves 12
  _incrementCounter12() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave12 = (prefs.getInt('ave12') ?? 0) + 1;
      prefs.setInt('ave12', _ave12);
    });
  }

  _incrementCounter112() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ave12 = (prefs.getInt('ave12') ?? 0) - 1;
      prefs.setInt('ave12', _ave12);
    });

  }

  Widget build(BuildContext context) {
    // ...
    return DecoratedBox(

      decoration: BoxDecoration(

        image: DecorationImage(

          image: AssetImage('assets/img/fondo7.png'),
          fit: BoxFit.fill,

          // ...

        ),
        // ...
        color: Colors.black,
      ),
         child:  Scaffold(
           backgroundColor: Colors.transparent,
           appBar: PreferredSize(

             preferredSize:Size.fromHeight(MediaQuery.of(context).size.height*0.06),
             child: AppBar(
               backgroundColor: Colors.transparent,
               title: Text(
                   "Registro de aves", style: TextStyle(
                 fontFamily: 'Metroregular',
               ),
               ),
               actions: <Widget>[
                 IconButton(
                     iconSize: MediaQuery.of(context).size.height*0.04,
                     icon: Icon(Icons.exit_to_app),
                     color: Colors.white,
                     onPressed: () {
                       showDialog<String>(context: context,
                           builder: (BuildContext)=> AlertDialog(
                             title: const Text('¿Desea cerrar la aplicación?'),
                             actions: <Widget>[
                               FlatButton(
                                 child: Text('Cancelar'),
                                 onPressed: ()=>Navigator.pop(context),
                               ),
                               FlatButton(
                                 child: Text('OK'),
                                 onPressed: (){
                                   //  Navigator.pop(context);
                                   SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
                                 },
                               ),
                             ],
                           )
                       ).then((returnVal){
                         if (returnVal!=""){

                         }
                       }
                       );
                     }
                 )
               ],
             ),

           ),
           drawer: Container(
             color: Colors.black45,
             width: MediaQuery.of(context).size.width * 0.15,
             height: MediaQuery.of(context).size.height ,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.start
               ,
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     Padding(
                       padding: EdgeInsets.all(10),
                     )
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     IconButton(
                       iconSize: MediaQuery.of(context).size.height*0.04,
                       icon: Icon(Icons.arrow_back),
                       color: Colors.white,
                       onPressed: (){
                         Navigator.pop(context);
                         Navigator.pop(context);
                       },
                     )
                   ],
                 ),
                 Row(

                   children: <Widget>[
                     Padding(
                       padding: EdgeInsets.all(10),
                     )
                   ],
                 ),


                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     IconButton(
                       iconSize: MediaQuery.of(context).size.height*0.04,
                       icon: Icon(Icons.home),
                       color: Colors.white,
                       onPressed: () async{
                         Navigator.pop(context);
                         Navigator.pop(context);


                       },
                     )
                   ],

                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     IconButton(
                       iconSize: MediaQuery.of(context).size.height*0.04,
                       icon: Icon(Icons.help),
                       color: Colors.white,
                       onPressed: () async{
                         Navigator.pop(context);
                         EasyDialog(
                           cardColor: Colors.transparent,
                             width: MediaQuery.of(context).size.width*0.9,
                             height: MediaQuery.of(context).size.height*0.8,
                             topImage: AssetImage("assets/img/pios3.png",  ),

                             title: Text("Ayuda", style: TextStyle(
                               color: Colors.white70,
                               fontSize: MediaQuery.of(context).size.width*0.05,
                               fontFamily: 'Metroregular',
                             ),),
                             description: Text("1) Añade tu avistamiento en el botón '+' .\n2) Si deseas anular un registro presiona el botón '-'.\n3) Toca las fotos para escuchar sus vocalizaciones ♪.", style: TextStyle(
                             color: Colors.white70,
                               fontSize: MediaQuery.of(context).size.width*0.05,
                               fontFamily: 'Metroregular',
                             ),)).show(context);



                       },
                     )
                   ],

                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     IconButton(
                       iconSize: MediaQuery.of(context).size.height*0.04,
                       icon: Icon(Icons.language),
                       color: Colors.white,
                       onPressed: () async{
                         Navigator.pop(context);
                         //////ccvdv
                         _launchURL();


                       },
                     )
                   ],

                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     IconButton(
                         iconSize: MediaQuery.of(context).size.height*0.04,
                         icon: Icon(Icons.exit_to_app),
                         color: Colors.white,
                         onPressed: () {
                           showDialog<String>(context: context,
                               builder: (BuildContext)=> AlertDialog(
                                 title: const Text('¿Desea cerrar la aplicación?'),
                                 actions: <Widget>[
                                   FlatButton(
                                     child: Text('Cancelar'),
                                     onPressed: ()=>Navigator.pop(context),
                                   ),
                                   FlatButton(
                                     child: Text('OK'),
                                     onPressed: (){
                                       //  Navigator.pop(context);
                                       SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
                                     },
                                   ),
                                 ],
                               )
                           ).then((returnVal){
                             if (returnVal!=""){

                             }
                           }
                           );
                         }
                     )
                   ],

                 )

               ],
             ),
           ),
           body: Container(
             child: SingleChildScrollView(
               physics: BouncingScrollPhysics(),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[

                   Column(
                     children: <Widget>[


                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: <Widget>[

                           Container(
                             width: MediaQuery.of(context).size.width*0.88,
                             child: Card(

                               color: Colors.black54,

                              // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.045),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(' \nToca en la imagen para escuchar el sonido', style: TextStyle(
                                     fontFamily: 'Metromedium',
                                     fontSize:MediaQuery.of(context).size.width*0.044 ,
                                     color: Colors.white,

                                   ),),
                                   Center(
                                     child: Text('♪', style: TextStyle(
                                       fontFamily: 'Metromedium',
                                       fontSize:MediaQuery.of(context).size.width*0.08 ,
                                       color: Colors.white,

                                     ),),
                                   ),
                                   Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       RaisedButton(
                                         textColor: Colors.white,
                                         color: Colors.blueGrey,
                                         onPressed: (){
                                           _stop();
                                         },
                                         child: Text("Parar sonido"),
                                       )
                                     ],
                                   )
                                 ],
                               ),
                             )
                             ,
                           )

                         ],
                       ),
                       //Dr Amc Linea 1
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[

                               Card(

                                 color: Colors.transparent,
                                 elevation: 10.0,


                               // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                 child: Container(
                                   width: MediaQuery.of(context).size.width*0.47,
                                   height: MediaQuery.of(context).size.width*0.61,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       FlatButton(
                                         onPressed: (){
                                           _assetsAudioPlayer.open(
                                             "assets/audio/columba.mp3",
                                           );

                                           //  _playPause();

                                         },
                                         child:  Image.asset("assets/img/shot/livia3.png",fit: BoxFit.fitWidth,),

                                       ),



                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: <Widget>[
                                           Text("Paloma\ncomún", style: TextStyle(
                                             color: Colors.white,
                                             fontFamily: 'Metroregular',
                                             fontSize: MediaQuery.of(context).size.width*0.04,

                                           ),
                                           )
                                         ],
                                       ),
                                       Row(
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           IconButton(
                                             icon: Icon( Icons.add_box),
                                             onPressed: (){
                                               _incrementCounter1();
                                             },
                                             iconSize:MediaQuery.of(context).size.width*0.065 ,
                                             tooltip: 'Añadir',
                                             color: Colors.white,
                                           ),
                                           Text("$_ave1", style: TextStyle(
                                             color: Colors.white,
                                             fontFamily: 'Metroregular',
                                             fontSize: MediaQuery.of(context).size.width*0.065,
                                           ),

                                           ),
                                           IconButton(
                                             icon: Icon( Icons.remove_circle),
                                             onPressed: (){
                                               if (_ave1>0) {
                                                 _incrementCounter11();
                                               }
                                             },
                                             iconSize:MediaQuery.of(context).size.width*0.065 ,
                                             tooltip: 'Restar',
                                             color: Colors.white,
                                           ),
                                         ],
                                       )

                                     ],
                                   ),
                                 )
                               ),

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width* 0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/capensis.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/capensis3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Gorrión\ncomún", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter2();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave2", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave2>0) {
                                                   _incrementCounter22();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),
                               //lien1
                             ],
                           ),
/////fila2
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width*0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/torcaza.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/torcaza3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Torcaza\n", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter3();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave3", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave3>0) {
                                                   _incrementCounter33();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width* 0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/chiguaco.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/chiguango2.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Chiguanco\n", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter4();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave4", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave4>0) {
                                                   _incrementCounter44();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),
                               //lien1
                             ],
                           ),
                           //fila 2

                           //fila 3
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width*0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/gigas.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/gigas2.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Colibrí\ngigante", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter5();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave5", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave5>0) {
                                                   _incrementCounter55();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width* 0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/sayaca.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/sayaca4.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Azulejo\n", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter6();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave6", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave6>0) {
                                                   _incrementCounter66();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),
                               //lien1
                             ],
                           ),
                           //fila 4
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width*0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/rutilante.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/coruscans3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Colibrí\nrutilante", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter7();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave7", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave7>0) {
                                                   _incrementCounter77();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width* 0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/aedon1.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/ratona3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Chochín\ncriollo", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter8();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave8", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave8>0) {
                                                   _incrementCounter88();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),
                               //lien1
                             ],
                           ),

                         //  fila5
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width*0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/atrata.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/atrata3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Jilguero\nnegro", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter9();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave9", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave9>0) {
                                                   _incrementCounter99();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width* 0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/phrygilus.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/punensis3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Yal\nperuano", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter10();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave10", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave10>0) {
                                                   _incrementCounter100();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),
                               //lien1
                             ],
                           ),

                           //fila6
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width*0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/Alkamari.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/alkamari2.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Caracara\nandino", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter111();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave11", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave11>0) {
                                                   _incrementCounter1111();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),

                               Card(

                                   color: Colors.transparent,
                                   elevation: 10.0,


                                   // margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),

                                   child: Container(
                                     width: MediaQuery.of(context).size.width* 0.47,
                                     height: MediaQuery.of(context).size.width*0.61,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         FlatButton(
                                           onPressed: (){
                                             _assetsAudioPlayer.open(
                                               "assets/audio/gaviota.mp3",
                                             );

                                             //  _playPause();

                                           },
                                           child:  Image.asset("assets/img/shot/gaviota3.png",fit: BoxFit.fitWidth,),

                                         ),



                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             Text("Gaviota\nandina", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.04,

                                             ),
                                             )
                                           ],
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: <Widget>[
                                             IconButton(
                                               icon: Icon( Icons.add_box),
                                               onPressed: (){
                                                 _incrementCounter12();
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Añadir',
                                               color: Colors.white,
                                             ),
                                             Text("$_ave12", style: TextStyle(
                                               color: Colors.white,
                                               fontFamily: 'Metroregular',
                                               fontSize: MediaQuery.of(context).size.width*0.065,
                                             ),

                                             ),
                                             IconButton(
                                               icon: Icon( Icons.remove_circle),
                                               onPressed: (){
                                                 if (_ave12>0) {
                                                   _incrementCounter112();
                                                 }
                                               },
                                               iconSize:MediaQuery.of(context).size.width*0.065 ,
                                               tooltip: 'Restar',
                                               color: Colors.white,
                                             ),
                                           ],
                                         )

                                       ],
                                     ),
                                   )
                               ),
                               //lien1
                             ],
                           ),
                         ],



                       ),



                     ],



                   )
                   ////dfsdfsdfsd

                 ],

               ),
             ),
           ),

         )
      );

  }



}