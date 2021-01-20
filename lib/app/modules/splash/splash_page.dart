import 'package:estrutura_modular/app/app_controler.dart';
import 'package:estrutura_modular/app/core/internationalization/app_translate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          RaisedButton(
            child: Text('Theme Dark'),
            onPressed: () {
              Modular.get<AppController>().setThemeData(ThemeMode.dark);
            },
          ),
          RaisedButton(
            child: Text('Theme Ligth'),
            onPressed: () {
              Modular.get<AppController>().setThemeData(ThemeMode.light);
            },
          ),
        ]),
      ),
    );
  }
}
