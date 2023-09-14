import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (_,__)=> const Divider(), 
        itemCount: menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].nombre),
          leading: Icon(menuOptions[index].icon, color:AppTheme.primary),
          onTap: (){
            Navigator.pushNamed(context, menuOptions[index].route);
          }
        ),
        )
    );
  }
}