import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xefi/models/equipement.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        liste: [
          EquipementObject(name: 'Equipement1', nbSerie: '1'),
          EquipementObject(name: 'Equipement2', nbSerie: '2'),
          EquipementObject(name: 'Equipement3', nbSerie: '3'),
          EquipementObject(name: 'Equipement4', nbSerie: '4'),
          EquipementObject(name: 'Equipement5', nbSerie: '5'),
          EquipementObject(name: 'Equipement6', nbSerie: '6'),
          EquipementObject(name: 'Equipement7', nbSerie: '7'),
          EquipementObject(name: 'Equipement8', nbSerie: '8'),
          EquipementObject(name: 'Equipement9', nbSerie: '9'),
          EquipementObject(name: 'Equipement10', nbSerie: '10')
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  List<EquipementObject> liste;
  MyHomePage({Key? key, required this.title, required this.liste})
      : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Xefi Lyon',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '2507, Avenue de l\'europe',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '69140 Rillieux la Pape',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              '04 72 83 75 75',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'xefi@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, top: 10, right: 20),
            child: Text(
              'blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla blabla',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Equipement (10)',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),
            ),
          ),
          ...List.generate(
            widget.liste.length,
            (index) => Text(
              widget.liste[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
