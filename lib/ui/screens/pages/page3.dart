import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //TODO: VERIFICAR COMO FECHAR TODAS AS TELAS FILHAS DE UMA VEZ

              Navigator.of(context).popUntil((route) => route.settings.name == '/');
            },
            child: const Text('Fechar'),
          )
        ],
      )),
    );
  }
}
