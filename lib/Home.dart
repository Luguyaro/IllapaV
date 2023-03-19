import 'package:flutter/material.dart';

import 'Nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  PageController pageController= PageController();
  
  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.bounceInOut);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 70, 137, 1),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        actions: [],
        leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          );
        },
      ),
      ),
      endDrawer: Nav_bar(),//barra de menu derecha
      body: PageView(
        controller: pageController,
        children: [
          home_one(),
          Container(color: Colors.amber),
          Container(color: Colors.pink),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar( 
        backgroundColor: Colors.lightBlue,
        fixedColor: Color.fromARGB(255, 213, 29, 100),
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Inicio',backgroundColor: Colors.lightBlue),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Curso',backgroundColor: Colors.lightBlue),
        BottomNavigationBarItem(icon: Icon(Icons.toll_outlined),label: 'Ajustes',backgroundColor: Colors.lightBlue)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
        onTap: onTapped
      ),
    );
  }

  Column home_one() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //Alinea vertical los elementos de la columna
        crossAxisAlignment: CrossAxisAlignment.stretch, //Alinea horizontal al centro
        children: <Widget>[
          Text("Prueba",textAlign: TextAlign.center),
          
          Container(
            height: 200,
            width: 500,
            margin: EdgeInsets.all(0),
            child: Image.network(
              "https://9to5google.com/wp-content/uploads/sites/4/2018/10/google-playground-2.gif?w=700",
              
              ),
          ),
          
          Container(
            //padding: ed,
            color: Colors.transparent,
            height: 200,
            width: 500,
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lime,
              boxShadow: const [
                BoxShadow(color: Colors.lime, spreadRadius: 3),
              ],
            ),
            child: Row(
              children: [
                Text("Estamos en la sesion 1.2", selectionColor: Colors.black),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 96, 33, 243),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow),
                    alignment: Alignment(2, 1),
                  ),
                ),
              ],
            ),
            
            
          ),
        ],
      );
  }


}

