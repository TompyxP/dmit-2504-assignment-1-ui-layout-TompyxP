// ignore_for_file: use_key_in_widget_constructors, todo

import 'dart:math';

import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.
            Column(
              children: [
                Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.amber,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ),
                          left: BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        )
                      ),
                    child: const Center(
                        child: Text(
                      'Container 1',
                      textAlign: TextAlign.center,
                    )
                  )
                ),
                Transform.rotate(
                    angle: pi / 4,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: const Center(
                            child: Text(
                          'Container 2',
                          textAlign: TextAlign.center,
                        )
                      )
                    )
                  )
              ],
            ),
            Column(children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.yellow,
                      ),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('Container 3'),
                      )
                    ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                    ),
                    child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text('Container 4')),
                  ),
                ),
              ),
            ]),
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border(
                              top: BorderSide(
                                color: Colors.white,
                                width: 3.0,
                              ),
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 3.0,
                              ),
                              left: BorderSide(
                                color: Colors.white,
                                width: 3.0,
                              ),
                              right: BorderSide(
                                color: Colors.white,
                                width: 3.0,
                              ),
                            )),
                        child: const Center(
                            child: Text(
                          'Container 5',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )
                      )
                    )
                  ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                    ),
                    child:
                        const Text('Con 6', style: TextStyle(fontSize: 30.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
