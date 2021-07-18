import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:pinch_zoom_image_updated/pinch_zoom_image_updated.dart';

class chiguaco extends StatefulWidget{
  @override
  _chiguaco createState()=> new _chiguaco();


}
@override

class _chiguaco extends State<chiguaco> with SingleTickerProviderStateMixin{

  @override
  // TODO: implement widget
  int a=0;
  AssetsAudioPlayer _assetsAudioPlayer;
  AnimationController _animationController;
  bool isPlaying = false;
  @override

  void initState(){
    super.initState();
    _assetsAudioPlayer = AssetsAudioPlayer();
    _animationController= new AnimationController(vsync:this,duration: Duration(seconds: 1), debugLabel: "true");
  }

  void _open(){
    _assetsAudioPlayer.open(

        "assets/audio/chiguaco.mp3",


    );
  }
  @override

  void _playPause() {
    if(a==0){

      _assetsAudioPlayer.open(
        "assets/audio/chiguaco.mp3",

      );
      a++;
    }
    else {
      _assetsAudioPlayer.playOrPause();
    }
  }
  void _stop(){
    _assetsAudioPlayer.stop();

  }
  @override
  void dispose() {


    _stop();
    _assetsAudioPlayer.dispose();
    _animationController.dispose();
    super.dispose();

  }

  @override

  Widget build(BuildContext context) {
    // ...

    return DecoratedBox(

      decoration: BoxDecoration(

        image: DecorationImage(

          image: AssetImage('assets/img/fondo4.png'),
          fit: BoxFit.fill,

          // ...

        ),
        // ...
        color: Colors.black,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(

          preferredSize:Size.fromHeight(MediaQuery.of(context).size.height*0.06),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
                "Chiguanco"
            ),
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
                    icon: Icon(Icons.help_outline),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                      EasyDialog(
                          cardColor: Colors.transparent,
                          width: MediaQuery.of(context).size.width*0.95,
                          height: MediaQuery.of(context).size.height*0.8,
                          topImage: AssetImage("assets/img/pios2.png",  ),

                          title: Text("Ayuda", style: TextStyle(
                            color: Colors.white70,
                            fontSize:MediaQuery.of(context).size.height*0.03 ,
                            fontFamily: 'Metroregular',
                          ),),
                          description: Text("1) Desliza la pantalla para ver la información, observa detalles como la forma, color y  otros rasgos.\n2) Pulsa el botón flotante para escuchar su canto y pulsa de nuevo para detener el sonido. \n3)Mantén presionado 2 puntos en la foto y extiende sin soltar para el acercamiento dinámico.", style: TextStyle(
                          color: Colors.white70,
                            fontFamily: 'Metrolight',
                            fontSize: MediaQuery.of(context).size.height*0.024,
                          ),
                          )).show(context);

                    },
                  )
                ],
              ),
              Row(

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: MediaQuery.of(context).size.height*0.04,
                    icon: Icon(Icons.share),
                    color: Colors.white,
                    onPressed: () async{
                      Navigator.pop(context);
                      final ByteData bytes = await rootBundle.load('assets/img/chiguanco.png');
                      await Share.file('Chiguanco', 'chiguanco.png', bytes.buffer.asUint8List(), "image/png", text: '');

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
                      Navigator.pop(context);


                    },
                  )
                ],

              ),

            ],
          ),
        ),

        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child:  Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                        Image.asset('assets/img/redo2.png', scale: 2,height: MediaQuery.of(context).size.height*0.1),
                      ],

                    ),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/img/pioD.png', scale: 2,height: MediaQuery.of(context).size.height*0.15,),
                      ],

                    ),
                    Row(
                      // mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05),
                          //   child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                        ),
                      ],
                    ),


                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Chiguanco", style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height*0.045,
                      fontFamily: 'Metrobold',
                      fontStyle: FontStyle.normal ,
                      decoration: TextDecoration.none,
                    ),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("(Nativa)", style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height*0.03,
                      fontFamily: 'Metrolight',
                      fontStyle: FontStyle.normal ,
                      decoration: TextDecoration.none,
                    ),)
                  ],
                ),
                //foto
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(

                      children: <Widget>[

                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width *0.95,
                          height: MediaQuery.of(context).size.height *0.31,
                          color: Colors.black26,
                          margin: EdgeInsets.all(MediaQuery.of(context).size.width *0.01),

                          child: PinchZoomImage(

                            image: Image.asset('assets/img/chiguanco.png',fit: BoxFit.scaleDown, scale: MediaQuery.of(context).size.width *0.0109,),

                            zoomedBackgroundColor: Colors.transparent,
                            // hideStatusBarWhileZooming: true,


                            onZoomStart: () {
                              //     print('Zoom started');
                            },
                            onZoomEnd: () {
                              //       print('Zoom finished');
                            },
                          ),


                        )
                      ],

                    )
                  ],
                ),
                //COntenido
                Column(

                  children: <Widget>[
                    Card(

                      color: Colors.black26,
                      margin: EdgeInsets.all(12.0),
                      elevation: 0.0,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.8,
                        width: MediaQuery.of(context).size.width*0.95,

                        child: InkWell(
                            splashColor: Colors.blueAccent,
                            onTap: (){},
                            child: Padding(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                              child: Column(

                                children: <Widget>[
                                  Row(

                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                      ),
                                    ],
                                  ),
                                  Column(

                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                         // text: 'Hello ',
                                            children: <TextSpan>[
                                            TextSpan(text: 'Nombre científico: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                              TextSpan(text: 'Turdus Chiguanco', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.italic )),
                                              TextSpan(text: '\nSensibilidad a la urbe: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                              TextSpan(text: 'Totalmente adaptables', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                              TextSpan(text: '\nOrden: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                              TextSpan(text: 'Pajaritos y aves cantoras (Passeriformes)', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                              TextSpan(text: '\nGrupo / Familia: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                              TextSpan(text: 'Mirlos, zorzales y tordos (Turdidae)\n', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),

                                            ],
                                        ),
                                      ),

                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("¿Dónde encontrarla?",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.05,
                                        fontFamily: 'Metrobold',
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,),)
                                    ],

                                  ),
                                  Row(

                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text("En el suelo buscando insectos y semillas, también en arbustos o árboles perchando y vocalizando.",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.045,
                                        fontFamily: 'Metromedium',
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,

                                      ),textAlign: TextAlign.center,)
                                    ],
                                  ),
                                  Row(

                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Características",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.05,
                                        fontFamily: 'Metrobold',
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,),)
                                    ],

                                  ),
                                  Row(

                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(

                                        "Ave mediana de plumaje negro, pico largo anaranjado, un anillo amarillo alrededor de los ojos.",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.width*0.045,
                                        fontFamily: 'Metromedium',
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,),
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
        ),
        floatingActionButton: FloatingActionButton.extended(

          onPressed: () {
            _animationController.reverse();
            _playPause();
            _assetsAudioPlayer.finished.listen((finished){
              _handleOnPresed();
            });

            // Add your onPressed code here!
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
          ),
          label: Text("19 s ♪"),
          backgroundColor: Colors.indigoAccent,
          tooltip: 'Reproducir canto',

        ),
      ),
    );
  }
  void _handleOnPresed(){
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

}
