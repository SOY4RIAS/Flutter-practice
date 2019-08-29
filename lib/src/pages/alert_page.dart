import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: _renderBody(context),
    );
  }

  Widget _renderBody(BuildContext context) => Center(
        child: OutlineButton(
          onPressed: () => _openAlert(context),
          child: Text('Abrir Alert'),
          highlightElevation: 4,
          splashColor: Colors.lightBlueAccent,
          shape: _beveledRectangleBorder(),
        ),
      );

  void _openAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context2) => _generateAlert1(context2));
  }

  Widget _generateAlert1(BuildContext context) => AlertDialog(
        title: Text('TEST'),
        shape: _shapeAlert(),
        backgroundColor: Colors.white,
        elevation: 5,
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('Test')],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () => Navigator.pop(context),
          ),
          FlatButton(
            child: Text('Aceptar'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      );

  BeveledRectangleBorder _beveledRectangleBorder() {
    return BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.elliptical(10, 10)));
  }

  _shapeAlert() => RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)));
}
