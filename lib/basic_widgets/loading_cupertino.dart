import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Untuk menggunakan Cupertino widgets

class LoadingCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {
                // Aksi ketika button ditekan
              },
            ),
            const CupertinoActivityIndicator(), // Loading bar gaya iOS
          ],
        ),
      ),
    );
  }
}
