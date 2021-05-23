import 'package:flutter/material.dart';
import 'package:food/pages/detalle_pagina.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFF0000),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Text('Comida a domicilio',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white))
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 105.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(75.0),
                      bottomLeft: Radius.circular(75.0))),
              child: ListView(
                padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 200.0,
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0.1,
                          childAspectRatio: 0.700,
                          children: <Widget>[
                            _comidaItem(
                                'Burger King', 25, 'assets/images/food1.png'),
                            _comidaItem('Pizza', 12, 'assets/images/food2.png'),
                            _comidaItem('Carne', 39, 'assets/images/food3.png'),
                            _comidaItem(
                                'Burger', 27, 'assets/images/food4.png'),
                            _comidaItem(
                                'Carne Asada', 38, 'assets/images/food5.png'),
                            _comidaItem(
                                'Tailandesa', 15, 'assets/images/food6.png'),
                            _comidaItem('Pizza Italiana', 48,
                                'assets/images/food7.png'),
                            _comidaItem(
                                'Empanadas', 2, 'assets/images/food8.png'),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

  Widget _comidaItem(String nombre, int precio, String imagen) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: Container(
          child: new Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xFFE6E4EB),
        elevation: 5,
        child: new Column(
          children: <Widget>[
            new Hero(
              tag: imagen,
              child: new Material(
                  child: Container(
                      color: Color(0xFFE6E4EB),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (context) => DetallePagina(
                                    nombre: nombre,
                                    precio: precio,
                                    imagen: imagen))),
                        child: new Image.asset(
                          imagen,
                          fit: BoxFit.contain,
                          width: 130,
                          height: 130,
                        ),
                      ))),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            Text(nombre,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black)),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            Text(precio.toString(),
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black)),
          ],
        ),
      )),
    );
  }
  
}
