
import 'package:bitbank/components/Botao.dart';
import 'package:bitbank/components/Editor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/Titulo.dart';

class FormularioTransferencia extends StatelessWidget {

  final TextEditingController _controllerCampoNumConta  = TextEditingController();
  final TextEditingController _controllerCampoValor     = TextEditingController(); 

  static const _tituloAppBar  = 'Enviando transferencia';
  static const _titulo        = 'Qual é o valor da transferencia?';
  static const _dicaNConta    = 'Número da Conta';
  static const _dicaValor     = '1500';
  static const _textBotao     = 'Enviar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_tituloAppBar),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Titulo(_titulo),
            Editor(_controllerCampoNumConta, _dicaNConta, TextInputType.number),
            Editor(_controllerCampoValor, _dicaValor, TextInputType.number),
            Botao(_textBotao, _controllerCampoNumConta, _controllerCampoValor),
          ]
        ),
      ),
    );
  }
}