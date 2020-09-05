import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  final List<String> menuOptions;
  final String selectedOption;
  const DropDownWidget({Key key, this.menuOptions, this.selectedOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: getOptionsMenu(),
      onChanged: (menuOption) {
        print(menuOption);
      },
    );
  }

  List<DropdownMenuItem<String>> getOptionsMenu() {
    List<DropdownMenuItem<String>> list = new List();
    menuOptions.forEach((poder) {
      list.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return list;
  }
}
