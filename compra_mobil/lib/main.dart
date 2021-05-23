import 'package:compra_mobil/pages/first_page.dart';
import 'package:compra_mobil/pages/second_page.dart';
import 'package:compra_mobil/pages/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iniciando Flutter',
      theme: ThemeData(
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

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget child;
    switch (_index) {
        case 0:
        child: FlutterLogo();
        break;
        case 1:
        child = MaterialApp(
        debugShowCheckedModeBanner: false, home: new SecondPage()
        );
        break;
        case 2:
        child = MaterialApp(
        debugShowCheckedModeBanner: false,home: new ThirdPage()
        );
        break;
    }




    return Scaffold(
      body: SizedBox.expand(child: child),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(()=> _index = newIndex),
          currentIndex: _index,

          items: [
            BottomNavigationBarItem(icon: Icon(
              Icons.home,
              color: Colors.blueAccent,
              size: 30.0,
            ),
            title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(
              Icons.format_align_center,
              color: Colors.blueAccent,
              size: 30.0,
            ),
            title: Text("Registrar")),
            BottomNavigationBarItem(icon: Icon(
              Icons.shopping_cart,
              color: Colors.orangeAccent,
              size: 30.0,
            ),
            title: Text("Home")),
          ]
          ),
    );
  }
}