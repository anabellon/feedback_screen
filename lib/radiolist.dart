import 'package:flutter/material.dart';

class RadioList extends StatelessWidget {
  const RadioList(
      {super.key,
      required this.title,
      required this.value,
      required this.group,
      required this.function,
      required this.color});

  final String title;
  final String value;
  final Object? group;
  final Function(Object?) function;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: color,
      title: Text(title),
      value: value,
      groupValue: group,
      onChanged: function,
    );
  }
}
