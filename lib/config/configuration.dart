import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primarycolor = Color(0xff396262);
//list of shadow maping
List<BoxShadow> listShadow = [
  BoxShadow(
    //color: Colors.grey[300],
    color: Colors.grey,
    blurRadius: 15,
    offset: Offset(0, 5)
  )
];

List<Map> drawerItem = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': Icons.attach_money, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add Pet'},
  {'icon': Icons.favorite, 'title': 'Favoirtes'},
  {'icon': FontAwesomeIcons.mailBulk, 'title': 'Message'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},



];

//list data
List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];
