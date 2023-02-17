import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Check'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 428,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: (value) {
                _sliderValue = value;
                setState(() { });
              }
              ),
              Image(
                image: const NetworkImage('https://i.pinimg.com/originals/37/f9/3f/37f93f9e16f82bb31c31ab5ea4b312fb.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
                const SizedBox(height: 50,)
          ],),
      )
    );
  }
}