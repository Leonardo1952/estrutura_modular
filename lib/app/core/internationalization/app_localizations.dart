import 'package:estrutura_modular/app/core/internationalization/localization_delegate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class AppLocalizations {

  final Locale locale;

  AppLocalizations(this.locale);

  Map<String, String> _localizationsStrings;

  //Metodo para carregar os arquivos
  Future<bool> load() async {
    String jsonString = await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationsStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  } 

  //Metodo para realizar a tradução
  String translate(String key) {
    return _localizationsStrings[key];
  }

  //
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  //
  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();
}