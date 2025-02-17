import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:memorama/config/config.dart';

class Parilla extends StatefulWidget {
  final Level? level;

  const Parilla(this.level, {Key? key}) : super(key: key);

  @override
  _ParillaState createState() => _ParillaState();
}

class _ParillaState extends State<Parilla> {@override
  int? clicked = 0, preclicked = -1;
  bool? flag = false;

  void initState(){
    super.initState();
    cartitas = [];
    initialState = [];
    inicializar(widget.level!);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: cartitas.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => FlipCard(
          onFlip: () {
            if (!flag!) {
              preclicked = index;
              clicked = 0;
              preclicked = 0;
              flag = true;
            } else {
              clicked = index;
              flag = false;
            }

            if (preclicked != clicked) {
              // voltear las cartas
            }

            if (cartitas.elementAt(clicked!) == cartitas.elementAt(preclicked!)) {
              debugPrint("Clicked: son iguales");
            } else {
              Future.delayed(Duration(seconds: 1),(){
                controllers[clicked!].controller?.toggle();
                controllers[preclicked!].controller?.toggle();
              });
            }

            debugPrint("Clicked: $preclicked");
            debugPrint("Clicked: $index");
          },
          direction: FlipDirection.HORIZONTAL,
            fill: Fill.fillBack,
            controller: controllers[index],
            flipOnTouch: true,
            //autoFlipDuration: const Duration(milliseconds: 500),
            back: Image.asset(cartitas[index]),
            front: Image.asset("images/reverso.png")),
    );
  }
}
