import 'package:flutter/material.dart';

import 'package:LigaStavok/views/game_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: new Color(0xFF3C415B),
          child: Center(
            child: GameWidget()
            )
          ),
      ),
    );
  }
}
