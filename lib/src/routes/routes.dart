import 'package:flutter/material.dart';

import 'package:componentes/src/pages/animated_container_page.dart';
import 'package:componentes/src/pages/inputs_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => {
      '/': (BuildContext context) => Scaffold(
            appBar: AppBar(
              title: Text('Componentes'),
            ),
            body: HomePage(),
          ),
      'alert': (BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
      'animated': (BuildContext context) => AnimatedContainerPage(),
      'inputs': (BuildContext context) => InputsPage(),
    };
