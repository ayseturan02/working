import 'package:flutter/material.dart';

void main() {
  runApp(const Sayfa());
}

class Sayfa extends StatefulWidget {
  const Sayfa({super.key});

  @override
  State<Sayfa> createState() => _SayfaState();
}

class _SayfaState extends State<Sayfa> {
  late int yas;
TextEditingController _txt1=TextEditingController();
  @override
  void initState(){
    print("initstate çalıştı");

    super.initState();
  }

  void yasDegistir(bool arttirma){
    setState(() {
      arttirma ? yas++ : yas--;
    });
    print(yas.toString());
  }

  @override
  Widget build(BuildContext context){
    _txt1.text=yas.toString();
      print("build ediliyor");
      return MaterialApp(
        title: "ders 2",
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("yas"),
                Text(
                  yas.toString(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: yas >=30 ? null : () => yasDegistir(true),
                        icon: const Icon(
                            Icons.add_box
                        ),
                    ),
                    IconButton(onPressed: yas <=18 ? null : () => yasDegistir(false),
                        icon: Icon(Icons.remove,
                        color: yas <= 18 ? Colors.red : Colors.black),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: _txt1,
                    maxLength: 2,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      label: Text("yas"),
                      hintText: "lütfen yasınızı giriniz",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.red.shade800,
                    ),
                  ),
                ),
                IconButton(onPressed: () {
                  setState(() {
                    yas=int.parse(_txt1.text);
                  });
                },
                    icon: Icon(Icons.calculate))
              ],
            ),

          ),


        ),
      );
  }


}
