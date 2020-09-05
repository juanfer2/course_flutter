import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final double valueSlider;
  final setValueSlider;
  final bool blockChange;

  const SliderWidget(
      {Key key,
      this.valueSlider,
      this.setValueSlider,
      this.blockChange = false})
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
      value: widget.valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (widget.blockChange)
          ? null
          : (value) {
              print(value);
              widget.setValueSlider(value);
            },
    );
  }
}
