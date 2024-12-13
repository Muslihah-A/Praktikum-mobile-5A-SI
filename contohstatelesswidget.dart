import 'package:flutter/material.dart';

class Contohstatelesswidget extends StatelessWidget{

  final TextEditingController _controllerPesan = TextEditingController();

  @override
  Widget build(BuildContext) {

    return Scaffold(
      appBar: AppBar(title: Text('Stateless Widget'),),
      body: Padding(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerPesan,
              decoration: InputDecoration(labelText: 'Masukan Pesan anda:'),
            ),
            Text(
              'Pesan : ${_controllerPesan.text}',
            )
          ],
        )
      )
    );
  }
}