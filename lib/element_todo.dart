import 'package:flutter/material.dart';

class TodoElement extends StatefulWidget {
  String titre;
  Function supprimerElement;
  int indice;
  TodoElement(this.titre, this.indice, this.supprimerElement);
  bool valeurCheckBox = false;
  @override
  _TodoElementState createState() => _TodoElementState();
}

class _TodoElementState extends State<TodoElement> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(widget.titre),
          leading: Checkbox(
            value: widget.valeurCheckBox,
            onChanged: (bool value) {
              setState(() {
                widget.valeurCheckBox = !widget.valeurCheckBox;
              });
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              widget.supprimerElement(widget.indice);
            },
          )),
    );
  }
}
