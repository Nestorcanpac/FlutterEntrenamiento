import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:untitled1/Presentations/Pantallas/counter_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
      debugShowCheckedModeBanner : false,

      home: const contador()
    );
    throw UnimplementedError();
  }

}

