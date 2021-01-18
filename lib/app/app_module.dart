import 'package:estrutura_modular/app/app_controler.dart';
import 'package:estrutura_modular/app/app_widget.dart';
import 'package:estrutura_modular/app/modules/home/home_module.dart';
import 'package:estrutura_modular/app/modules/splash/splash_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // Este é para a injeção de dependencia
  List<Bind> get binds => [Bind((i) => AppControler())];

  @override
  // Primeira aplicação a ser iniciada
  Widget get bootstrap => AppWidget();

  @override
  // Rotas nomeadas
  List<ModularRouter> get routers => [
        ModularRouter(
          '/', child: (_, args) => SplashPage(),
        transition: TransitionType.noTransition),
        ModularRouter(
          '/home',
          module: HomeModule(),
        )
      ];
}
