import 'package:flutter/material.dart';
import 'package:chuuse/custom_widgets/text_field_container.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.grey[200],
        decoration: InputDecoration(
          hintText: "Password",
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
