import 'package:estrutura_modular/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GoFast',
      theme: ThemeData(        
        primarySwatch: Colors.blue,        
      ),
      home: SplashPage(),
      //Rota inicial
      initialRoute: '/',
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}