import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nproyecto/screens/home_screen.dart';
import 'package:nproyecto/screens/settings_screen.dart';

	class ProfileScreen extends StatefulWidget {
  
  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {

  int currentPage = 1;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      
      //* AppBar
        
        //? Cambiar la pantalla
        body: 
        
        Container(
          
          color: Colors.blue[600],
          child: Center(
            
            child: Column(
           
          children: [
            
            Container(
              margin: EdgeInsets.all(8),
            
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('Byron2.jfif')
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                 color: Colors.grey[600],
                
              ),
              child: Text('Byron Haldaír',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            )),
                            padding: EdgeInsets.only(left: 50,right: 50),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                 color: Colors.grey[600],
                
              ),
              child: Text('Gacía Guzmán',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            )),
                            padding: EdgeInsets.only(left: 50,right: 50),
            ),
          ],
        ),
          ),
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
  