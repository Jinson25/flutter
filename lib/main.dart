/*import 'package:app/src/contador.dart'; // solo si se necesita el archivo contador*/
import 'package:app/src/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLutter Jinson",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(), //para definir que archivo ejecutar primero por ejemplo home : Contar()
    );
  }
}
