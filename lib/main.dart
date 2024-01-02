import 'package:flutter/material.dart';

void main() {
  runApp(Sayfa());
}

class Sayfa extends StatefulWidget{
  Sayfa({super.key});

  @override
  State<Sayfa> createState() => _SayfaState();
}

abstract class _SayfaState extends State<Sayfa>{
  late int yas;
  TextEditingController _txt1 = TextEditingController();
  @override
  void initState(){
    print("initstate çalıştı");
    yas =18;

    super.initState();
  }
}