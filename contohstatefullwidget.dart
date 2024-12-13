import 'package:flutter/material.dart';

class Contohstatefullwidget extends StatefulWidget {
  @override
  _ContohstatefullwidgetState createState() => _ContohstatefullwidgetState();
}

class _ContohstatefullwidgetState extends State<Contohstatefullwidget> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';

  @override 
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Input')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Masukan Nama'),
              onChanged: (value) {
                setState(() {
                  _name = value; //Memperbarui state saat input berubah
                });
              },
            ),
            // Menampilkan nama lansung
            Text(
              'Nama: $_name',
                    style: TextStyle(fontSize: 20),
            ),  
          ],
            ),
        ),
      );
  }
}