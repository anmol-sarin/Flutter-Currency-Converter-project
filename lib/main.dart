import 'package:flutter/material.dart';
import './Currency_converter_material_page.dart';


void main(){
  runApp(MyApp1());
}
class MyApp1 extends StatelessWidget{
  const MyApp1({super.key});


  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ccmp(),
    );
  }
}

