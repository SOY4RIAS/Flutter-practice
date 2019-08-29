import 'dart:convert';

import 'package:flutter/services.dart';

/**
 * class for loading static file for menu `code`
 * tst
 */
class _MenuProvider {
  List<dynamic> options = [];
  /**
   * Returns the menu data
   */
  Future<List<dynamic>> loadData() async {
    String res = await rootBundle.loadString('lib/src/data/menu.json');
    Map data = json.decode(res);
    options = data['rutas'];
    return data['rutas'];
  }
}

/**
 * `constant` for load menu data
 */
final menuProvider = _MenuProvider();
