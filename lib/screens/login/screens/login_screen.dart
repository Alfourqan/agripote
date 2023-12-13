import 'package:agripote/constants.dart';
import 'package:agripote/screens/login/components/page_title_bar.dart';
import 'package:agripote/screens/login/components/under_part.dart';
import 'package:agripote/screens/login/components/upside.dart';
import 'package:agripote/screens/login/screens/reset_password.dart';
import 'package:agripote/screens/login/screens/signup_screen.dart';
import 'package:agripote/screens/login/widgets/rounded_button.dart';
import 'package:agripote/screens/login/widgets/rounded_icon.dart';
import 'package:agripote/screens/login/widgets/rounded_input_field.dart';
import 'package:agripote/screens/login/widgets/rounded_password_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/logo.png", 
                ),
                const PageTitleBar(title: 'Login to your account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        iconButton(context),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "or use your email account",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const RoundedInputField(
                                  hintText: "Email", icon: Icons.email),
                              const RoundedPasswordField(),
                              switchListTile(),
                              RoundedButton(text: 'LOGIN', press: () {}),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Don't have an account?",
                                navigatorText: "Register here",
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder:
                                     (context) => const SignUpScreen())
                                  );
                                },
                              ),
                                GestureDetector(
                                onTap: () {
                                  Navigator.push(                     context,
                                      MaterialPageRoute(
                                          builder: (context) => ResetPassword()));
                                },
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                   color: kThirdColor,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                               
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

switchListTile() {
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 40),
    child: SwitchListTile(
      dense: true,
      title: const Text(
        'Remember Me',
        style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
      ),
      value: true,
      activeColor: kThirdColor,
      onChanged: (val) {},
    ),
  );
}

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(imageUrl: "assets/images/facebook.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/twitter.png"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "assets/images/google.jpg"),
    ],
  );
}