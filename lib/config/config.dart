library config.globals;

import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

import '../utilis/details.dart';
import '../widgets/tablero.dart';

enum Level { imposible, dificil, medio, facil }

List<String> cards() {
  return [
    "images/cloud.png",
    "images/cloud.png",
    "images/day.png",
    "images/day.png",
    "images/dino.png",
    "images/dino.png",
    "images/fish.png",
    "images/fish.png",
    "images/frog.png",
    "images/frog.png",
    "images/girraf.png",
    "images/giraff.png",
    "images/moon.png",
    "images/moon.png",
    "images/night.png",
    "images/night.png",
    "images/octo.png",
    "images/octo.png",
    "images/peacock.png",
    "images/peacock.png",
    "images/quest.png",
    "images/quest.png",
    "images/rabbit.png",
    "images/rabbit.png",
    "images/rain.png",
    "images/rain.png",
    "images/rainbow.png",
    "images/rainbow.png",
    "images/seahorse.png",
    "images/seahorse.png",
    "images/shark.png",
    "images/shark.png",
    "images/star.png",
    "images/star.png",
    "images/sun.png",
    "images/sun.png",
    "images/whale.png",
    "images/whale.png",
    "images/wolf.png",
    "images/wolf.png",
    "images/zoo.png",
    "images/zoo.png",
  ];
}

List<Details> inicio = [
  Details("Facíl",
      Colors.green,
      Colors.green[900],
      const Tablero(level:Level.facil),
      Level.facil),
  Details("Medio",
      Colors.yellow,
      Colors.yellow[800],
      const Tablero(level:Level.medio),
      Level.facil),
  Details("Dificíl",
      Colors.orange,
      Colors.orange[900],
      const Tablero(level:Level.dificil),
      Level.facil),
  Details("Imposible",
      Colors.red,
      Colors.red[900],
      const Tablero(level:Level.imposible),
      Level.facil)
];

List <bool> initialState = [];
List <String> cartitas = [];
List <FlipCardController> controllers = [];

void inicializar(Level level){
  List<String> tmp = cards();
  int size = 0;
  switch(level){
    case Level.facil:
      size = 10;
      break;
    case Level.imposible:
      size = 40;
      break;
    case Level.dificil:
      size = 30;
      break;
    case Level.medio:
      size = 20;
      break;
  }

  if(level == Level.facil) {
    for (int i = 0; i < 10; i++) {
      initialState.add(true);
      cartitas.add(tmp[i]);
      controllers.add( FlipCardController());
    }
  }
}

