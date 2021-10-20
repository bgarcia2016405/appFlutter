import 'package:flutter/material.dart';

	class SettingsScreen extends StatelessWidget{
    
    @override

    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('SettingsSreen'),
            elevation: 0,
          ),
          body: Center(
            child: Text('SettingsScreen'),
          ),
        );
    }
  }