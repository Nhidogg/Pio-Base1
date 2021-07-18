import 'package:flutter/material.dart';
import 'redo2.dart';
import 'region.dart';
class venue extends StatefulWidget{
  @override
  _venue createState() => new _venue();

}
class _venue extends State<venue> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    // ...
    return Scaffold(
      body: Container(
              padding: EdgeInsets.all(5.0),

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
                  "Bienvenid@", textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'Metroregular',
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
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.02),
                  // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width:MediaQuery.of(context).size.width *0.9,
                  height:MediaQuery.of(context).size.height *0.46,
                  child: Image.asset('assets/img/colibri.gif', fit: BoxFit.fitHeight,),

                )
              ],
            ),

            Column(

              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.01),
                  child: Text(

                      'Te proporcionamos una guía de las especies de aves con las que puedes encontrarte en la ciudad de La Paz.', textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width *0.05,
                        fontFamily: 'Metrolight',

                      ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.07),
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
                      padding: EdgeInsets.all(10.0),
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
                              builder: (BuildContext) => redo2()
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
