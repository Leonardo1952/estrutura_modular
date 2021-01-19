import 'package:estrutura_modular/app/core/internationalization/app_translate.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(child: Text(AppTranslate(context).text('welcome'),),),
    );
  }
}