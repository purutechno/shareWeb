import 'package:flutter/material.dart';
import 'package:shareadminpanel/ui/language_selection.dart';

class RouteProviders {
  static goToLanguageSelection(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LanguageSelection()));
  }
}
