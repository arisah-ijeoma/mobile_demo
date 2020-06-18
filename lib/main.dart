import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listers')
        ),
        body: ProductManager()
      )
    );
  }
}
