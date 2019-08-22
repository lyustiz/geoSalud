import 'package:flutter/material.dart';

class VisorFicha extends StatefulWidget {
  VisorFicha({Key key}) : super(key: key);

  _VisorFichaState createState() => _VisorFichaState();
}

class _VisorFichaState extends State<VisorFicha> {
  @override
  Widget build(BuildContext context) {
    return fichaContainer();
  }

  Scaffold fichaContainer() {
    return Scaffold(
      appBar: AppBar(
        title: Text('visorFicha'),
      ),
      body: Container(
          color: Color(hexStringToHexInt('#e8f1fc')),
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 100.0,
                width: 922.0,
                margin: EdgeInsets.only(bottom: 30.0),
                child: headFicha(),
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 200.0,
                    child: menuFicha(),
                  ),
                  Expanded(
                    child: bodyFicha(),
                  )
                ],
              ),
            ],
          )),
    );
  }

  Container headFicha() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
              width: 54,
              height: 54,
              margin: EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/avatar.png')),
              )),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                    'Nombre',
                    style: TextStyle(fontSize: 14.0),
                  )),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                    'Maria Elena Rodriguez',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
                ],
              )),
          Expanded(
              child: Container(
            child: Text('data'),
          )),
          Expanded(
              child: Container(
            child: Text('data'),
          )),
          Expanded(
              child: Container(
            child: Text('data'),
          )),
        ],
      ),
    );
  }

  Container menuFicha() {
    return Container(
      color: Colors.white,
      height: 329.0,
      child: Container(
        child: ListView(
          children: <Widget>[
 
            ListTile(
              title: Text('DATOS AL INGRESO'),
            ),
            ListTile(
              title: Text('DATOS AL INGRESO'),
            ),
            ListTile(
              title: Text('DATOS AL INGRESO'),
            ),
            ListTile(
              title: Text('DATOS AL INGRESO'),
            ),
            ListTile(
              title: Text('DATOS AL INGRESO'),
            )
          ],
        ),
      ),
    );
  }

  Container bodyFicha() {
    return Container(
      color: Colors.white,
      height: 329.0,
      margin: EdgeInsets.only(left: 30.0),
      child: Text('visor'),
    );
  }
}

hexStringToHexInt(String hex) {
  hex = hex.replaceFirst('#', '');
  hex = hex.length == 6 ? 'ff' + hex : hex;
  int val = int.parse(hex, radix: 16);
  return val;
}
