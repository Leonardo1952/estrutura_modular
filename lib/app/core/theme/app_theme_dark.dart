import 'package:estrutura_modular/app/core/interfaces/theme_app_interface.dart';
import 'package:flutter/src/material/theme_data.dart';

class AppThemeDark implements IThemeAppInterface {
  @override
  ThemeData getTheme() {
    return ThemeData.dark();
  }

}