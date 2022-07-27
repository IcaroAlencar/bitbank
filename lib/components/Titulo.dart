
import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String _titulo;

  Titulo(this._titulo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(_titulo, 
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      );
  }
}
