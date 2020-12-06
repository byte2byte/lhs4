import 'package:flutter/material.dart';

List<Map> categories = [
  {'name': 'Cold, Cough & Fever', 'iconPath': 'images/cat.png'},
  {'name': 'General Physician', 'iconPath': 'images/cat.png'},
  {'name': 'Eye', 'iconPath': 'images/dog.png'},
  {'name': 'Ear,Nose & Throat', 'iconPath': 'images/rabbit.png'},
  {'name': '''Women's Issues''', 'iconPath': 'images/parrot.png'},
  {'name': 'Skin Problems', 'iconPath': 'images/horse.png'},
  {'name': 'Orthopedics', 'iconPath': 'images/cat.png'},
  {'name': 'Lab Tests', 'iconPath': 'images/cat.png'},
  {'name': 'Diagnosis', 'iconPath': 'images/cat.png'},
  {'name': 'Diabetes', 'iconPath': 'images/cat.png'},
  {'name': 'Medicines', 'iconPath': 'images/cat.png'},
];

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.075);
Color mCC = Colors.green.withOpacity(0.65);
Color fCL = Colors.grey.shade600;

BoxDecoration nMbox =
    BoxDecoration(shape: BoxShape.circle, color: mC, boxShadow: [
  BoxShadow(
    color: mCD,
    offset: Offset(10, 10),
    blurRadius: 10,
  ),
  BoxShadow(
    color: mCL,
    offset: Offset(-10, -10),
    blurRadius: 10,
  ),
]);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
    ]);
