
import 'package:bitbank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {

  final TextEditingController  _controllerCampoNumConta;
  final TextEditingController  _controllerCampoValor;
  final String                 _titulo;

  Botao(this._titulo, this._controllerCampoNumConta, this._controllerCampoValor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoButton.filled(
        child: Text(_titulo), 
        onPressed: ()=> _criaTranferencia(context)),
      );
  }

  void _criaTranferencia(BuildContext context) {
    final int? numeroConta  = int.tryParse(_controllerCampoNumConta.text);
    final double? valor     = double.tryParse(_controllerCampoValor.text);
    if(numeroConta != null && valor != null){
      final tranferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('$tranferenciaCriada');
      Navigator.pop(context, tranferenciaCriada);
    }
  }
}

