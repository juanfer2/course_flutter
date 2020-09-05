import 'package:flutter/material.dart';

import 'package:components_app/src/widgets/sliderWidgets/slider_widget.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valueSlider = 100.0;
  bool _blockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SliderWidget(
              valueSlider: valueSlider,
              setValueSlider: setValueSlider,
              blockChange: _blockCheck,
            ),
            SizedBox(
              height: 20,
            ),
            _switchList(),
            _checkBox(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Image(
                image: NetworkImage(
                  "https://historia.nationalgeographic.com.es/medio/2019/03/28/04-saturno-deborando-a-su-hijo-goya_b31c4f27_800x1446.jpg",
                ),
                width: valueSlider,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: Text('Block Slider'),
        value: _blockCheck,
        onChanged: (value) {
          setBlockCheck(value);
        });
  }

  Widget _switchList() {
    return SwitchListTile(
        title: Text('Block Slider'),
        value: _blockCheck,
        onChanged: (value) {
          setBlockCheck(value);
        });
  }

  void setValueSlider(double value) {
    setState(() {
      valueSlider = value;
    });
  }

  void setBlockCheck(bool value) {
    setState(() {
      _blockCheck = value;
    });
  }
}
