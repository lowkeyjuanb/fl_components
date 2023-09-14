import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
        centerTitle: true,
        ),
      body: ListView(
        children: [
          ...options.map( 
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )
          ).toList()

          
        ],
      )
      
    );
  }
}