import 'package:flutter/material.dart';

import 'package:components_app/src/widgets/sliderWidgets/slider_widget.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valueSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                "https://historia.nationalgeographic.com.es/medio/2019/03/28/04-saturno-deborando-a-su-hijo-goya_b31c4f27_800x1446.jpg",
              ),
              width: valueSlider,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            SliderWidget(
              valueSlider: valueSlider,
              setValueSlider: setValueSlider,
            ),
          ],
        ),
      ),
    );
  }

  void setValueSlider(double value) {
    setState(() {
      valueSlider = value;
    });
  }
}
