import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class acerca extends StatefulWidget{
  @override
  _acerca createState()=> new _acerca();
}
class _acerca extends State<acerca>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _launchURL() async{
      const url='https://www.red-o2.org';
      if(await canLaunch(url)){
        await launch(url);
      }
      else{
        throw 'No se puede mostrar $url';
      }
          }
    _launchURLface() async{
      const url='https://www.facebook.com/RedO2Bo';
      if(await canLaunch(url)){
        await launch(url);
      }
      else{
        throw 'No se puede mostrar $url';
      }

    }
    _launchURLinsta() async{
      const url='https://instagram.com/redo2.bolivia?igshid=d3sf0mz61dbj';
      if(await canLaunch(url)){
        await launch(url);
      }
      else{
        throw 'No se puede mostrar $url';
      }

    }
    return DecoratedBox(
           decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img/fondo1.png'),
            fit: BoxFit.fill,
            // ...

          ),
          color: Colors.black,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.05),
                      // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Acerca de ", style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width *0.07,
                      fontFamily: 'Metroregular',

                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Center(
                      child: Image.asset('assets/img/poi1.png', scale: 2.5,),

                    )
                  ],
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.02),
                      // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Enterate de nuestras actividades', style: TextStyle(
                      fontFamily: 'Metroregular',
                      fontSize: MediaQuery.of(context).size.width *0.05,
                      color: Colors.white70,
                    ),)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.03),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.03),
                    ),
                    Container(
                        child: InkWell(
                          onTap: (){

                          },
                          splashColor: Colors.lightBlueAccent,
                          child: Image.asset('assets/img/twiter1.png', scale: 20,),

                        )

                    ),
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.02),
                    ),
                    Container(
                        child: InkWell(
                          onTap: (){
                        _launchURLface();
                          },
                          splashColor: Colors.lightBlueAccent,
                          child: Image.asset('assets/img/face1.png',scale: 20,),
                        )

                    ),
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.02),
                    ),
                    Container(
                        child: InkWell(
                          onTap: (){
                            _launchURLinsta();
                          },
                          splashColor: Colors.lightBlueAccent,
                          child: Image.asset('assets/img/insta1.png',scale: 20),
                        )

                    ),
                    Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.02),
                    ),
                    Container(
                        child: InkWell(
                      onTap: (){

                            },
                          splashColor: Colors.lightBlueAccent,
                          child: Image.asset('assets/img/youtube1.png',scale: 20,),
                        )

                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.02),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                          child: InkWell(
                            onTap: (){
                            _launchURL();
                            },
                            splashColor: Colors.lightBlueAccent,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.language,
                                  size: MediaQuery.of(context).size.width *0.2,
                                  color: Colors.lightBlueAccent,

                                ),
                                Text(
                                  "Visita nuestra web",style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Metroregular',
                                  fontSize: MediaQuery.of(context).size.width *0.05,
                                ),
                                )
                              ],
                               )


                      ),
                    )),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width *0.02),
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(

                      width: MediaQuery.of(context).size.width *0.9,
                      height: MediaQuery.of(context).size.height *0.9,
                      child: SingleChildScrollView(

                        physics: BouncingScrollPhysics(),
                        child: Column(
                            children: <Widget>[
                              Center(
                                child: Text("Versión 1.4.5 ", style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *0.05,
                                  fontFamily: 'Metromedium',
                                  color: Colors.white70,
                                ),),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.05,right: MediaQuery.of(context).size.width *0.05),
                                child: Column(
                               //   mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Equipo Pío-Pío\n", style: TextStyle(color: Colors.white70),)
                                      ],
                                    ),
                                    Center(
                                      child: Text(
                                        "Alexander Quispe\nNatalia Gil Ostrias\nMayli Hayes\nNayra Antezana\nGabriel Archondo\nMariana Aramayo\n",

                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Text("Agradecimientos\n",style: TextStyle(color: Colors.white70),),
                                        )
                                      ],
                                    ),
                                    Center(
                                      child: Text(
                                      "Ilustración: Gabriela Copa\nFotografías: \nGabriel Archondo\nAngel Claure\nMayli Hayes \nSonidos: xeno-canto.org "
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Text("\n©© - Bolivia - 2020\n",style: TextStyle(color: Colors.indigo),),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              )
                            ],
                        )
                      ),
                    )
                  ],
                )

              ],
            ),

          ),
          floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.undo),
            onPressed: (){
              Navigator.pop(context);
            },
            label: Text("Regresar"),
            backgroundColor: Colors.transparent,
          ),
        ),
    );
  }
}