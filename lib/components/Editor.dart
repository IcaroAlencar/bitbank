
import 'package:flutter/cupertino.dart';

class Editor extends StatelessWidget {
  
  final TextEditingController _controllerCampo;
  final String _placeHolder;
  final TextInputType _tipoTeclado;

  Editor(this._controllerCampo, this._placeHolder, this._tipoTeclado);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CupertinoTextField(
          controller: _controllerCampo,
          style: TextStyle(fontSize: 24),
          placeholder: _placeHolder,
          keyboardType: _tipoTeclado,
        ),
      );
  }
}