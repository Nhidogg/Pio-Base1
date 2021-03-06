import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:pinch_zoom_image_updated/pinch_zoom_image_updated.dart';

class giga extends StatefulWidget{
  @override
  _giga createState()=> new _giga();


}
@override

class _giga extends State<giga> with SingleTickerProviderStateMixin{

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
      "assets/audio/gigas.mp3",

    );
  }
  @override

  void _playPause() {
    if(a==0){

      _assetsAudioPlayer.open(
        "assets/audio/gigas.mp3",

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
                "Colibr?? gigante"
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
                          description: Text("1) Desliza la pantalla para ver la informaci??n, observa detalles como la forma, color y  otros rasgos.\n2) Pulsa el bot??n flotante para escuchar su canto y pulsa de nuevo para detener el sonido. \n3)Mant??n presionado 2 puntos en la foto y extiende sin soltar para el acercamiento din??mico.", style: TextStyle(
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
                      final ByteData bytes = await rootBundle.load('assets/img/gigas.png');
                      await Share.file('Colibr?? gigante', 'gigas.png', bytes.buffer.asUint8List(), "image/png", text: '');

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
                              title: const Text('??Desea cerrar la aplicaci??n?'),
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
                    Text("Colibr?? gigante", style: TextStyle(
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
                    Text("Luli (Nativa)", style: TextStyle(
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

                            image: Image.asset('assets/img/gigas.png',fit: BoxFit.scaleDown, scale: MediaQuery.of(context).size.width *0.0109,),

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
                        height: MediaQuery.of(context).size.height*0.7,
                        width: MediaQuery.of(context).size.width*0.95,

                        child: InkWell(
                            splashColor: Colors.blueAccent,
                            onTap: (){},
                            child: Padding(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                              child: Column(

                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      // text: 'Hello ',
                                      children: <TextSpan>[
                                        TextSpan(text: 'Nombre cient??fico: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                        TextSpan(text: 'Patagona gigas', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.italic )),
                                        TextSpan(text: '\nSensibilidad a la urbe: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                        TextSpan(text: 'Media', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                        TextSpan(text: '\nOrden: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                        TextSpan(text: 'Picaflores y vencejos\n(Apodiformes)', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                        TextSpan(text: '\nGrupo / Familia: ', style: TextStyle(color: Colors.white, fontFamily: 'Metrobold',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),
                                        TextSpan(text: 'Picaflores (Trochilidae)\n', style: TextStyle(color: Colors.white, fontFamily: 'Metromedium',fontSize:MediaQuery.of(context).size.width*0.045,fontStyle:FontStyle.normal )),

                                      ],
                                    ),
                                  ),


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("??D??nde encontrarla?",style: TextStyle(
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
                                      Text("Aliment??ndose en plantas con flores tubulares.",style: TextStyle(
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
                                      Text("Caracter??sticas",style: TextStyle(
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

                                        "Picaflor, ave muy peque??a, de plumaje oscuro con tonos marrones. Pico largo y delgado, su vuelo es m??s entorpecido y lento en comparaci??n a otros colibr??es.",style: TextStyle(
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
          label: Text("23 s ???"),
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
