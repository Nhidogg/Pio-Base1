import 'package:flutter/material.dart';
import 'redo2.dart';
import 'region.dart';
class serie1 extends StatefulWidget{
  @override
  _serie1 createState() => new _serie1();

}
class _serie1 extends State<serie1> {
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
                  "Recuerda", textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width *0.07,
                    fontFamily: 'Metrobold',
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
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.022),
                  // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width:MediaQuery.of(context).size.width *0.9,
                  height:MediaQuery.of(context).size.height *0.38,
                  child: Image.asset('assets/img/pios3.png', fit: BoxFit.fitHeight,),

                )
                ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
                  // child: Text("Pio Pio App V1.4", textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white)),
                ),
              ],
            ),

            Column(

              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.01),
                  child: Text(

                    '"El uso excesivo de señuelos auditivos, grabaciones e imitaciones pueden alterar el comportamiento de las aves." \n\n "Úsalo con precaución."', textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width *0.055,
                      fontFamily: 'Metroextrabold',

                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
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
                        Text("Iniciar", textAlign: TextAlign.center, style: TextStyle(color: Colors.black87)),
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
                )


              ],

            ),

          ],
        ),

      ),

    );
  }
}
