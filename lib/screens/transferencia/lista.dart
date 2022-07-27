
import 'package:bitbank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario.dart';

const _tituloAppBar  = 'BitBank';

class ListaTranferencias extends StatefulWidget {

  final List<Transferencia>_listaTranferencias = [];

  @override
  State<ListaTranferencias> createState() => _ListaTranferenciasState();
}

class _ListaTranferenciasState extends State<ListaTranferencias> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_tituloAppBar),
        ),
      body: ListView.builder(
        itemCount: widget._listaTranferencias.length,
        itemBuilder: (context, index) {
          final transf = widget._listaTranferencias[index];
          return ItemTransferecia(transf);
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future future = Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) {
                return FormularioTransferencia();
                }));
          future.then((tranfereciaRecebida) => _atualiza(tranfereciaRecebida));      
        }
        
      ),
    );
  }

  void _atualiza(tranfereciaRecebida) {
    return setState(() {
      debugPrint('Chegou no then do future');
      debugPrint('$tranfereciaRecebida');
      if(tranfereciaRecebida != null){
        widget._listaTranferencias.add(tranfereciaRecebida);
      }
    });
  }
}



class ItemTransferecia extends StatelessWidget {

  final Transferencia _transferencia;
  
 ItemTransferecia(this._transferencia);  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString())
        ),);
  }
}
