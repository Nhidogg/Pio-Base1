import 'package:flutter/material.dart';

import 'region.dart';
import 'serie1.dart';
class redo2 extends StatefulWidget{
  @override
  _redo2 createState() => new _redo2();

}
class _redo2 extends State<redo2> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    // ...

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),

        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage('assets/img/fondo4.png'),
            fit: BoxFit.fill,
            // ...

          ),
          color: Colors.black,
          // ...
        ),

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
                  "Información sobre aves bolivianas\n a tu alcance", textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width*0.055,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none,
                    fontFamily: 'Metromedium',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width:MediaQuery.of(context).size.width *0.9,
                  height:MediaQuery.of(context).size.height *0.4,
                  child: Image.asset('assets/img/redo2.png', fit: BoxFit.fitHeight,),

                )

              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.03),
                  // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                ),
              ],
            ),
            Column(

              children: <Widget>[

                Text(

                  'Selecciona una especie, echa una mirada a sus peculiaridades y escucha su canto. \n\n Explora, disfruta y comparte.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width *0.05,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.036),
                  // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Row(
                  children: <Widget>[
                    RaisedButton(
                        child:
                        Text("Saltar", textAlign: TextAlign.center, style: TextStyle(color: Colors.black87)),
                        color: Colors.cyan[20],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )
                        ),

                        onPressed:() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext) => region()
                          )

                          );

                        }

                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    RaisedButton(
                        child:
                        Text("Siguiente", textAlign: TextAlign.center, style: TextStyle(color: Colors.black87)),
                        color: Colors.cyan[20],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )
                        ),

                        onPressed:() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext) => serie1()
                          )

                          );

                        }

                    ),

                  ],
                )


              ],

            ),

          ],
        ),
      ),

    );
  }
}
