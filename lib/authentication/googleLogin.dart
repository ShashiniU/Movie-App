import 'package:flutter/material.dart';
import 'package:movieapp/authentication/colors.dart';

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Continue with Google"),
        style: ElevatedButton.styleFrom(primary: ColorsPage.google),
      ),
    );
  }
}
