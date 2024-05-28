import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';

AppBar customAppBar(){
  return AppBar(
    title: Text('Django Todos',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
    backgroundColor: darkBlue,
  );
}