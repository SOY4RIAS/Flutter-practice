import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('CARDS'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _renderType1(),
          SizedBox(
            height: 10,
          ),
          _renderType2()
        ],
      ),
    );
  }

  Widget _renderType1() => Card(
        elevation: 5.0,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadiusGeometry.lerp(
                BorderRadius.vertical(
                    top: Radius.circular(-25), bottom: Radius.circular(-50)),
                BorderRadius.horizontal(
                    left: Radius.circular(-50), right: Radius.circular(-15)),
                10)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.black87,
              ),
              title: Text('TEST TITLE'),
              subtitle: Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores saepe illum nemo, '),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.black45,
                  ),
                  label: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton.icon(
                  icon: Icon(
                    Icons.done,
                    color: Colors.black45,
                  ),
                  label: Text('OK'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      );

  Widget _renderType2() => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.2,
                  spreadRadius: 2.2,
                  offset: Offset(1, 1))
            ],
            borderRadius: BorderRadius.all(Radius.circular(20.2))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.2)),
          child: Column(
            children: <Widget>[
              FadeInImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0015/4792/7646/articles/metatron1_d36bf77e-f46a-4e5d-a79e-dc81bafd54a9_1600x.jpg?v=1544806422'),
                placeholder: AssetImage('lib/src/assets/images/imgLoading.gif'),
                height: 300.0,
                fit: BoxFit.cover,
              ),
              Container(
                child: Text('Text TEST data'),
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      );
}
