import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final double valueSlider;
  final setValueSlider;

  const SliderWidget({Key key, this.valueSlider, this.setValueSlider})
      : super(key: key);
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.greenAccent,
      label: 'Size image',
      // divisions: 20,
      value: widget.valueSlider,
      min: 10.0,
      max: 200.0,
      onChanged: (value) {
        print(value);
        widget.setValueSlider(value);
      },
    );
  }
}
