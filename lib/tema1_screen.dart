import 'package:flutter/material.dart';

class Tema1Screen extends StatefulWidget {

  @override
  State<Tema1Screen> createState() => _Tema1ScreenState();
}

class _Tema1ScreenState extends State<Tema1Screen> {
  //upload
  Widget uploadCurso1Screen() 
  {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "1. Prendamos nuestro primer LED",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
    );
  }  
  
  @override
  Widget build(BuildContext context) {
    return uploadCurso1Screen();
  }
}