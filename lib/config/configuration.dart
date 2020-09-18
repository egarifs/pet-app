import 'package:flutter/material.dart';

Color primarycolor = Color(0xff396262);
//list of shadow maping
List<BoxShadow> listShadow = [
  BoxShadow(
    //color: Colors.grey[300],
    color: Colors.grey,
    blurRadius: 15,
    offset: Offset(0, 5),
  )
];
//list data
List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];
