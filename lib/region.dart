import 'package:flutter/material.dart';
import 'Paginamenu.dart';

// ignore: camel_case_types
class region extends StatefulWidget{
  @override
  _region createState() => new _region();

    }
// ignore: camel_case_types
class _region extends State<region> {
  @override
  // TODO: implement widget
  @override
  void dispose() {
    super.dispose();

  }
  Widget build(BuildContext context) {
    // ...
    return DecoratedBox(

         decoration: BoxDecoration(

           image: DecorationImage(

             image: AssetImage("assets/img/fondo3.png"),
             fit: BoxFit.fill,
             )

              ),


           child: Scaffold(
            backgroundColor: Colors.transparent,
             body: Container(
                           child: SingleChildScrollView(
                             physics: BouncingScrollPhysics(),

                             child: Column(
                               children: <Widget>[
                                 Row(
                                   mainAxisAlignment:MainAxisAlignment.center,
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.03),
                                       // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                                     ),
                                   ],
                                 ),
                                 Row(

                                   mainAxisSize: MainAxisSize.max ,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: <Widget>[
                                     Text(
                                       "Selecciona una región", textAlign: TextAlign.center,
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: MediaQuery.of(context).size.width *0.07,
                                         fontFamily: 'Metromedium',
                                         fontStyle: FontStyle.normal,
                                         decoration: TextDecoration.none,
                                       ),
                                     )

                                   ],

                                 ),
                                 Row(
                                   mainAxisAlignment:MainAxisAlignment.center,
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.01),
                                       // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                                     ),
                                   ],
                                 ),

                                 Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Card(
                                       color: Colors.transparent,
                                       child: Container(

                                         width: MediaQuery.of(context).size.width *0.78,
                                         height:  MediaQuery.of(context).size.height *0.85,
                                         child: InkWell(
                                           splashColor: Colors.blueAccent,
                                           onTap: (){
                                             Navigator.of(context).push(MaterialPageRoute(
                                                 builder: (BuildContext) => Paginamenu()
                                             )

                                             );
                                           },
                                           child: Column(


                                           children: <Widget>[
                                             Row(
                                               mainAxisAlignment:MainAxisAlignment.center,
                                               children: <Widget>[
                                                 Padding(
                                                   padding: EdgeInsets.only(top: MediaQuery.of(context).size.width *0.05),
                                                   // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                                                 ),
                                               ],
                                             ),
                                             Image.asset("assets/img/altipl.png", height: MediaQuery.of(context).size.height *0.7,),
                                                ButtonBar(
                                                  alignment: MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    Text('Aves de La Paz', style: TextStyle(
                                                      fontFamily: 'Metrolight',

                                                      color: Colors.white,
                                                      fontSize: MediaQuery.of(context).size.width *0.08,
                                                    ))
                                                  ],
                                                )
                                           ],
                                         ),
                                       ),
                                     ),
                                     ),
                                   ],


                                 )
                               ],
                             ),
                           ),
             ),
           )






    );
  }
}
