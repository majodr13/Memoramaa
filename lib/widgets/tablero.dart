import 'package:flutter/material.dart';
import 'package:memorama/config/config.dart';
import 'package:memorama/widgets/parilla.dart';

class Tablero extends StatefulWidget {
  final Level? level;
  const Tablero({this.level, super.key});

  @override
  State<Tablero> createState() => _TableroState();
}

class _TableroState extends State<Tablero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nivel:  ${widget.level!.name}"),
      ),
    body: Parilla(widget.level),
    );
  }
}
