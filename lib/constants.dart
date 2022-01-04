import 'package:flutter/material.dart';

const List<String> Gender = [
  'male',
  'female',
];

const List<String> Age = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23',
  '24',
  '25',
  '26',
  '27',
  '28',
  '29',
  '30',
];

const Color KBasicColor = Color(0xff0A1A86);

const Color KNoneBasicColor = Color(0xffA5DBE1);

const Color KGreyColor = Color(0xff5E5E5E);
const TextStyle KTextStyle = TextStyle(
  color: KBasicColor,
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
const InputDecoration KInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: KNoneBasicColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: KNoneBasicColor, width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

BorderSide borderSide = BorderSide(
  color: KNoneBasicColor,
  width: 2,
);
