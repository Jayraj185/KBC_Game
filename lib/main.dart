import 'package:flutter/material.dart';
import 'package:kbc/Data.dart';
import 'package:kbc/Easy.dart';
import 'package:kbc/End.dart';
import 'package:kbc/False.dart';
import 'package:kbc/Hard.dart';
import 'package:kbc/Home.dart';
import 'package:kbc/Medium.dart';
import 'package:kbc/True.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Home(),
        'data' : (context) => Data(),
        'easy' : (context) => Easy(),
        'medium' : (context) => Medium(),
        'hard' : (context) => Hard(),
        'true' : (context) => True(),
        'false' : (context) => False(),
        'end' : (context) => End(),
      },
    )
  );
}