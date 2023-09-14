import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50, 
            max: 400,
            value: _sliderValue, 
            activeColor: AppTheme.primary,
            onChanged: _sliderEnable 
            ? (value){
              _sliderValue = value;
              setState(() {});
            }
            : null

          ),
          // Checkbox(
          //   value: _sliderEnable, 
          //   onChanged: (value){
          //     _sliderEnable = value ?? true;
          //     setState(() {});
          //   }
          // ),
          

          // Switch(
          //   value: _sliderEnable, 
          //   onChanged: (value){
          //     _sliderEnable = value;
          //     setState(() { });
          //   }
          // ),
          
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value){
              _sliderEnable = value ?? true;
              setState(() {});
            }
          ),
          
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: (value){
              _sliderEnable = value;
              setState(() {});
            }
          ), 

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpngimg.com%2Fuploads%2Fbatman%2Fbatman_PNG51.png&f=1&nofb=1&ipt=9296103664aa7ac50a5b3d7c761971b02e5872efe7aa0b0b014bb178f180ee77&ipo=images'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
            ),
          ),
          // const SizedBox(height: 50)
          
        ],
      )
    );
  }
}