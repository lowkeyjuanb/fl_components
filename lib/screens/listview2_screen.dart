import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        centerTitle: true,
        ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder:(context, i) => ListTile(
          title: Text(options[i]), 
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color:Colors.indigo,),
          onTap:(){
            final game = options[i];
            print(game);
          }, 
        ),
        separatorBuilder:(_, __) => const Divider(), 
        )
    );
  }
}