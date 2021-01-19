import 'package:estrutura_modular/app/core/internationalization/app_localizations.dart';
import 'package:flutter/material.dart';

class AppTranslate {
  final BuildContext context;

  AppTranslate(this.context);

  String text(String key) {
    return AppLocalizations.of(context).translate(key);
  }
}