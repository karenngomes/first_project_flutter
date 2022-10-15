import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aviso'),
      ),
      body: Center(
        child: Text(
          'Essa semana tem mais evento! @katie.ufal',
          style: TextStyle(fontSize: 40, color: Colors.purple),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
