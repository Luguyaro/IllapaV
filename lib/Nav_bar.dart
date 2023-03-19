import 'package:flutter/material.dart';

class Nav_bar extends StatelessWidget {
  const Nav_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(209, 48, 138, 180),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Primer Usuario'), 
            accountEmail: Text('ejemplo@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://img.favpng.com/19/1/3/robot-cartoon-illustration-png-favpng-Mw0LSNpvxBjZCQJ2DwSwuZLNm.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 94, 7, 255),
              image: DecorationImage(
                image: NetworkImage('https://s1.ppllstatics.com/elcorreo/www/multimedia/202208/10/media/MM-maravillas-naturales/1-vinicunca-peru-fotolia.jpg',
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.score_outlined),
            title: Text('Ajustes'),
            onTap: () => null,
          ),

        ],
      ),
    );
  }
}
