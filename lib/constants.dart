import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const Color mainColor = Color(0xffd9ddff);
const Color blueColor = Color(0xff295bff);
const String activeId = 'activeId';
String? currentId = '';

String getDayName(DateTime date) {
  return DateFormat('EEEE').format(date); // full day name
}
