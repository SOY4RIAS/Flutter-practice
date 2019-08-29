import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _renderListItems(),
    );
  }

  Widget _renderListItems() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _list(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _list(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    data.forEach((opt) {
      final temp = ListTile(
        leading: getIcon(name: opt['icon']),
        title: Text(opt['texto']),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      options..add(temp)..add(Divider());
    });

    return options;
  }
}
