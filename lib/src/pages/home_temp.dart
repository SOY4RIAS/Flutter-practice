import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final _opciones = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: _renderItemsAlt(),
    ));
  }

  List<Widget> _renderItems() {
    List<Widget> lista = List<Widget>();
    for (var opt in _opciones) {
      final tempTile = ListTile(
        isThreeLine: true,
        title: Text(opt),
        subtitle: Text('test'),
      );

      lista.add(tempTile);
    }

    return lista;
  }

  List<Widget> _renderItemsAlt() {
    var widgets = _opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Container(
              child: Icon(
                Icons.add_a_photo,
                color: Colors.black,
              ),
            ),
            title: Text(item),
            subtitle: Text('subtitle'),
            trailing: Icon(
              Icons.delete,
              color: Colors.black,
              semanticLabel: 'Delete',
            ),
          ),
          Divider(
            color: Colors.black26,
          )
        ],
      );
    }).toList(growable: false);

    return widgets;
  }
}
