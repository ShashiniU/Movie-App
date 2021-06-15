import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/authentication/colors.dart';

class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Continue with Facebook"),
        style: ElevatedButton.styleFrom(primary: ColorsPage.facebook),
      ),
    );
  }
}
