import 'package:agripote/constants.dart';
import 'package:agripote/screens/login/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kThirdColor,
            ),
            hintText: "Password",
            hintStyle: TextStyle(fontFamily: 'Montserrat'),
            suffixIcon: Icon(
              Icons.visibility,
              color: kThirdColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
