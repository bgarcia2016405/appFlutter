import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text('Hola mundo  $currentPage'),
          elevation: 0,
        ),
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
            currentPage = index;

            setState(() {});
          },
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              icon: Icon( Icons.verified_user_rounded),
              label: 'User'),
             BottomNavigationBarItem(
              icon: Icon( Icons.settings),
              label: 'Settings'), 
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