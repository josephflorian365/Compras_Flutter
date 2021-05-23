import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Color.green,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  "BUGGER KING",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                      color: Colors.red),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            child: new Image(
                          width: 250.0,
                          height: 150.0,
                          image:
                              new AssetImage("assets/images/hamburguesa.png"),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email", icon: Icon(Icons.email)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Password", icon: Icon(Icons.vpn_key)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30.0),
                          child: Text("Login"),
                          onPressed: () {}),
                      SizedBox(
                        width: 30,
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30.0),
                          child: Text("Cancel",
                          style: TextStyle(fontSize:15.0),
                      ),
                          onPressed: () {}),
                    ],
                  ),
                  //SizedBox(height: 40,),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
