import 'package:flutter/material.dart';

import '../config/config.dart';

class Botonera extends StatefulWidget {
  const Botonera({Key? key}) : super(key: key);

  @override
  _BotoneraState createState() => _BotoneraState();
}

class _BotoneraState extends State<Botonera> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: inicio.length,
          itemBuilder: (context, index) {
            return GestureDetector(onTap: () {
              //ruta sin nombre
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => inicio[index].goto!
                  ));
            },
              child: Stack( //alt + intro
                children: <Widget> [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: inicio[index].primaryColor,
                        borderRadius: BorderRadius.circular(12.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.transparent,
                                spreadRadius: .5,
                        offset: Offset(3,4)),
                          ]),
                  ),
                  Column(
                  children: <Widget>[
                    SizedBox(height: 33,),
                    Center(
                      child: Text(inicio[index].name!,
                        style: TextStyle(fontFamily: "kanit",
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            shadows: <Shadow>[
                          Shadow(
                            color:  Colors.yellowAccent,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ), Shadow(
                            color:  Colors.red,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          )
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                  ),
                ],
              ),
            );
          },
        )
    );
  }
}
