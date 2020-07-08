import 'package:flutter/material.dart';
import 'package:chuuse/custom_widgets/text_field_container.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const InputField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 42.5),
        child: TextFieldContainer(
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
