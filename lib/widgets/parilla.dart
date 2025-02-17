import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:memorama/config/config.dart';

class Parilla extends StatefulWidget {
  final Level? level;

  const Parilla(this.level, {Key? key}) : super(key: key);

  @override
  _ParillaState createState() => _ParillaState();
}

class _ParillaState extends State<Parilla> {

  void initState(){
    super.initState();
    inicializar(widget.level!);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: cartitas.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => FlipCard(
          direction: FlipDirection.HORIZONTAL,
            flipOnTouch: true,
            autoFlipDuration: const Duration(milliseconds: 500),
            front: Image.asset(cartitas[index]),
            back: Image.asset("images/reverso.png")),
    );
  }
}
