import 'package:flutter/material.dart';
import 'package:chuuse/custom_widgets/custom_input/input_decoration.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const CustomInputField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 42.5),
        child: InputFieldDecoration(
          child: TextField(
            onChanged: onChanged,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
