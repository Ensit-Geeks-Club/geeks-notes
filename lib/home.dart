import 'package:flutter/material.dart';
import 'element_todo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List monListe = [
    "bonjour",
    "bonsoir",
    "au revoir",
    "salut",
  ];
  bool valeurCheckBox = false;

  void supprimerElement(int i) {
    setState(() {
      monListe.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Geeks Todo"),
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: monListe.length,
          itemBuilder: (BuildContext context, int indice) {
            return TodoElement(monListe[indice], indice, supprimerElement);
          },
        ));
  }
}
