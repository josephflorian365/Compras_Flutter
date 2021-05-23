import 'package:flutter/material.dart';

class DetallePagina extends StatefulWidget {
  final nombre;
  final precio;
  final imagen;

  const DetallePagina({this.nombre, this.precio, this.imagen});

  @override
  _DetallePaginaState createState() => _DetallePaginaState();
}

class _DetallePaginaState extends State<DetallePagina> {
  int _counter = 0;
  int _total = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _calcular() {
    var numero1 = widget.precio;

    int numero2 = _counter;

    int result = numero1 * numero2;

    setState(() {
      _total = result;
      print(_total);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFD0202),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.restaurant_menu),
              onPressed: null,
              color: Colors.white),
        ],
        title: Text('Detalle',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 102,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                  top: 15.0,
                  right: 80.0,
                  bottom: 25,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFE6E4EB),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45.0),
                            bottomRight: Radius.circular(45.0))),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width,
                  )),
              Positioned(
                  top: (MediaQuery.of(context).size.width / 2) + 30.0,
                  left: (MediaQuery.of(context).size.width / 2) - 47.0,
                  child: Hero(
                    tag: widget.imagen,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage(widget.imagen),
                              fit: BoxFit.cover)),
                      height: 200.0,
                      width: 200.0,
                    ),
                  )),
              Positioned(
                  top: 50.0,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.nombre,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.black)),
                      SizedBox(
                        height: 28.0,
                      ),
                      Row(
                        children: [
                          Text('Precio: ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                  color: Colors.black)),
                          Text(widget.precio.toString(),
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                  color: Colors.black)),
                          SizedBox(
                            height: 28.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 28.0,
                      ),
                      Text('Cant: $_counter',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.black)),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[700],
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: Colors.blue[400],
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(75.0),
                              bottomLeft: Radius.circular(75.0),
                            )),
                        margin: EdgeInsets.only(top: 20.0),
                        padding: EdgeInsets.all(8.0),
                        child: new Column(
                          children: [
                            SizedBox(
                              height: 28.0,
                            ),
                            new IconButton(
                              icon: new Icon(Icons.add, color: Colors.yellow),
                              onPressed: () {
                                _incrementCounter();
                                _calcular();
                              },
                            ),
                            new IconButton(
                              icon: new Icon(Icons.fiber_smart_record),
                              onPressed: () {},
                            ),
                            new IconButton(
                              icon:
                                  new Icon(Icons.remove, color: Colors.yellow),
                              onPressed: () {
                                _decrementCounter();
                                _calcular();
                              },
                            ),
                            SizedBox(
                              height: 28.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        padding: EdgeInsets.all(20.0),
                        height: 60.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Colors.blue[400],
                              offset: Offset(0.0, 1.0),
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topRight:Radius.circular(75.0),
                            bottomLeft:Radius.circular(25.0)
                          ),
                          color: Colors.grey[700]
                        ),
                         child: Text('Total: $_total',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black)),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
