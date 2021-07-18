import 'package:easy_dialog/easy_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Contador.dart';
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

class Paginamenu extends StatefulWidget{
  @override
  _Paginamenu createState()=> new _Paginamenu();

}

class _Paginamenu extends State<Paginamenu>{

  // TODO: implement widget
  @override
  void dispose() {
   // controller.dispose();
    super.dispose();

  }
  final _showToast =()=>Fluttertoast.showToast(
    msg: "Registro eliminado",
    toastLength:Toast.LENGTH_SHORT,
  );
  _launchURL() async{
    const url='https://www.red-o2.org';
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'No se puede mostrar $url';
    }

  }
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
         child:  Scaffold(
           backgroundColor: Colors.transparent,
           appBar: PreferredSize(

             preferredSize:Size.fromHeight(MediaQuery.of(context).size.height*0.06),
             child: AppBar(
               backgroundColor: Colors.transparent,
               title: Text(
                   "Lista de aves", style: TextStyle(
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
                             description: Text("1) Selecciona un ave de la lista. \n2) En cada ficha encontrarás una breve descripción de la especie, una fotografia y un ejemplo de su vocalización.\n3)En la barra lateral podrás encontrar opciones para compartir la foto, acceder a nuestra web y otros consejos para navegar en la aplicación.", style: TextStyle(
                               color: Colors.white70,
                               fontSize: MediaQuery.of(context).size.width*0.04,
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

                 ),


               ],
             ),
           ),
           body: Container(
             child: SingleChildScrollView(
               physics: BouncingScrollPhysics(),
               child: Column(
                 children: <Widget>[

                   Column(
                     children: <Widget>[

                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[


                           Row(
                             children: <Widget>[
                               Image.asset('assets/img/poi1.png', scale: 5,),
                             ],

                           )
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Padding(
                             padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                             child: Text('  Selecciona un ave', style: TextStyle(
                               fontFamily: 'Metromedium',
                               fontSize:MediaQuery.of(context).size.width*0.065 ,
                               color: Colors.white70,

                             ),),
                           )
                         ],
                       ),

                       Row(
                         children: <Widget>[
                           Padding(
                             padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.025, right: MediaQuery.of(context).size.width*0.02, bottom: MediaQuery.of(context).size.height*0.002 ),
                             child: Column(
                               children: <Widget>[
                                 Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )
                                  ),
                                   color: Colors.white10,
                                   child: Container(
                                     width: MediaQuery.of(context).size.width*0.93,
                                     height: MediaQuery.of(context).size.height*0.54,
                                     child: SingleChildScrollView(

                                       physics: BouncingScrollPhysics(),
                                       child: Column(

                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         children: <Widget>[
                                           Card(
                                             color: Colors.lightBlue[400],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.white,),
                                               title: Text("Paloma común", style: TextStyle(
                                                 color: Colors.white,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Columba livia", style: TextStyle(
                                                 color: Colors.white70,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => libia(),
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Gorrión común", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Zonotrichia capensis", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => zonotrichia()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Torcaza", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Zenaida auriculata", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => Torcaza()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Chiguanco", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Turdus chiguanco", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => chiguaco()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Colibrí gigante", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Patagona gigas", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => giga()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Azulejo", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Thraupis sayaca", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => azulejo()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Colibrí rutilante", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Colibrí coruscans", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => coruscans()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Chochín criollo", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Troglodytes aedon", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => aedon1()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Jilguero negro", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Spinus atrata", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => spoagra()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color:Colors.black87 ,),
                                               title: Text("Yal peruano", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Phrygilus punensis", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => punensis()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Caracara andino", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Phalcoboenus megalopterus", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => alka()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),
                                           Card(
                                             color: Colors.orangeAccent[100],
                                             child: ListTile(
                                               leading: Icon(Icons.arrow_right, color: Colors.black87,),
                                               title: Text("Gaviota andina", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrobold',
                                               ),),
                                               subtitle: Text("Chroicocephalus serranus", style: TextStyle(
                                                 color: Colors.black87,
                                                 fontFamily: 'Metrolight',
                                                 fontStyle: FontStyle.italic,
                                               ),) ,
                                               dense: true,
                                               onTap: (){
                                                 Navigator.of(context).push(MaterialPageRoute(
                                                     builder: (BuildContext) => gavio()
                                                 )

                                                 );
                                               },
                                             ),
                                           ),



                                         ],
                                       ),
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           )
                         ],
                       ),
                       Row(
                         children: <Widget>[
                           Container(
                             width: MediaQuery.of(context).size.width*0.58,
                             height: MediaQuery.of(context).size.height*0.15,

                             child: Card(
                                  borderOnForeground: false,


                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    )
                                ),
                               color: Colors.transparent,
                               child: (

                                   ListTile(
                                    // contentPadding: EdgeInsetsGeometry margin,
                                     leading: Image.asset("assets/img/pio24.png", scale: MediaQuery.of(context).size.height*0.02),
                                     title: Text("", style: TextStyle(
                                       color: Colors.white70,
                                     ),),
                                     subtitle: Text("Acerca de la App", style: TextStyle(
                                       fontFamily: 'Metromedium',
                                       fontSize: MediaQuery.of(context).size.height*0.024,
                                       color: Colors.white,
                                     ),),
                                      trailing: Text(''),
                                  //  contentPadding:  EdgeInsets.all(2),
                                   isThreeLine: true,

                                     // dense: true,

                                     onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(
                                           builder: (BuildContext) => acerca()
                                       )

                                       );
                                     },
                                   )
                               ),
                             ),
                           ),
                           Container(
                             width: MediaQuery.of(context).size.width*0.42 ,
                             height: MediaQuery.of(context).size.height*0.15,
                             child: Card(

                               borderOnForeground: false,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(15),
                                     topRight: Radius.circular(15),
                                     bottomLeft: Radius.circular(15),
                                     bottomRight: Radius.circular(15),
                                   )
                               ),

                               color: Colors.transparent,
                               child:  ListTile(
                                 // contentPadding: EdgeInsetsGeometry margin,
                                 //leading: Image.asset("assets/img/pio24.png", scale: MediaQuery.of(context).size.height*0.02),

                                 title: Text("", style: TextStyle(
                                   color: Colors.white70,
                                 ),),
                                 subtitle: Text("Registro", style: TextStyle(
                                   fontFamily: 'Metromedium',
                                   fontSize: MediaQuery.of(context).size.height*0.024,
                                   color: Colors.white,
                                 ),),
                                 trailing: Icon(Icons.check_box, size: MediaQuery.of(context).size.height*0.05 ,color: Colors.white,),
                                 //  contentPadding:  EdgeInsets.all(2),
                                 isThreeLine: true,

                                 // dense: true,

                                 onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                                       builder: (BuildContext) => Contador()
                                   )

                                   );
                                 },
                               )
                             )
                             )
                         ],
                       )
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