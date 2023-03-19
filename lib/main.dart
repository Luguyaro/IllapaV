import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

 Future<void> main() async 
 {
    try
    {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();

    }
    catch(errorMsg)
    {
      print( "Error: "+ errorMsg.toString());
    }
    runApp( MyApp());
 }

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   //Estamos importando
      title: 'Illapa.V',  //Aqui ponemos el titulo del app
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}
