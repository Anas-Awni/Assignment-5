import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List carNames = [
    "Toyota",
    "Lexus",
    "Mercedes",
    "BMW",
    "Dodge",
    "VolksWagen",
  ];
  List carSubtitle = [
    "Pruis 2022",
    "CT 2017",
    "CLA 2018",
    "M5 2019",
    "Challenger 2015",
    "ID4 2021",
  ];
  List carImages = [
    "images/toyota.png",
    "images/lexus.png",
    "images/mercedes.png",
    "images/bmw.png",
    "images/dodge.png",
    "images/volkswagen.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(
            "Cars App",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: carNames.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.indigoAccent,
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    isThreeLine: true,
                    trailing: Icon(Icons.car_rental_rounded),
                    title: Text("${carNames[i]}"),
                    subtitle: Text("${carSubtitle[i]}"),
                    leading: Image(image: AssetImage("${carImages[i]}")),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
