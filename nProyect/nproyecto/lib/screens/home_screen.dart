import 'package:flutter/material.dart';
import 'package:nproyecto/screens/profile_scrrem.dart';
import 'package:nproyecto/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 0;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      //* AppBar
        
        //? Cambiar la pantalla
        body: PageView(
          children: [
            CustomScreen(color: Colors.blue, texto: Text('Azul')),
            CustomScreen(color: Colors.green, texto: Text('Verde')),
            CustomScreen(color: Colors.indigo, texto: Text('Indigo')),
            CustomScreen(color: Colors.pink, texto: Text('Rosa'))
          ],
        ),

        //* Tabs

        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          currentIndex: currentPage,
          onTap:(index){
            if(index != currentPage){
              if (index == 0) {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
            });
          }
          if (index == 1) {
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ));
            });
          }

          if(index == 2){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              ));
            });
          }
            }
            
          },
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              icon: Icon( Icons.bungalow_rounded),
              label: 'Home',
              ),
            BottomNavigationBarItem(
              icon: Icon( Icons.verified_user_rounded),
              label: 'User',
              ),
             BottomNavigationBarItem(
              icon: Icon( Icons.settings),
              label: 'Settings'
              ), 
          ],
        ),
      );
  }
}


class CustomScreen extends StatelessWidget {

  final Color color;
  final Text texto;

  const CustomScreen({ required this.color, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: texto,
      ),
    );
  }
}

