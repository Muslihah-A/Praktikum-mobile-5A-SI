import 'package:flutter/material.dart';

class Chekbox01 extends StatefulWidget {
  const Chekbox01({super.key});
  @override
  State<Chekbox01> createState() => _Chekbox01State();
}

class _Chekbox01State extends State<Chekbox01> {
  bool _diCheked = false; //Menyimpan status chekbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Chekbox 01')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Chekbox widget
            Checkbox(
              value: _diCheked,
              onChanged: (bool? value) {
                setState(() {
                  _diCheked = value ?? false; // Memperbarui status chekbox
                });
              },
            ),
            // Menampilkan status chekbox
            Text(
              _diCheked ? 'Chekbox dipilih' : 'Chekbox tidak dipilih',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

}
