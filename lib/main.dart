import 'package:flutter/material.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/services.dart';
import 'venue.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,));
      runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pio Pio',
      theme: ThemeData(
        fontFamily: "Metromedium",

      //  primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: <String,WidgetBuilder> {
        '/venue':  (context) => venue() ,

      } ,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {






  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.transparent,

        body: DecoratedBox(
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
            body: Container(
              child: Column(



                mainAxisAlignment:MainAxisAlignment.center,

                children: <Widget>[
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/img/tit.png",
                        height: 300,

                        width: 300, ),



                    ],

                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text("Pío Pío App V1.4.5",style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14.0,color: Colors.white, fontFamily: 'Metromedium',)),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          child:Text("Acceder", textAlign: TextAlign.center, style: TextStyle(color: Colors.black87)),
                          color: Colors.cyan[20],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )
                          ),
                          onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext) => venue() )

                            );
                          }

                      )

                    ],
                  )
                ],

              ),
            ),

          ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
