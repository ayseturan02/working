import 'package:flutter/material.dart';

void main() {
  runApp(Deneme());
}


class Deneme extends StatefulWidget {
  const Deneme({super.key});

  @override
  State<Deneme> createState() => _DenemeState();


}

class _DenemeState extends State<Deneme> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      value=value+1;
                    });
                    print(value);
                  },
                  child: const Text("tıkla"),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
