import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const RoundedPasswordField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextFormField(
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter valid Password(Min. 6 Character)");
        }
      },
      controller: controller,
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black,
          ),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    ));
  }
}
