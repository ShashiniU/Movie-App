import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/authentication/colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isSignupscreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          //---- Background Color-------------------------------------------------------------------------------------
          Container(
            color: Colors.black,
          ),

          // Start ------   Signup/Login background(whitespace)--------------------------------------------------------------

          Positioned(
            top: isSignupscreen ? 180 : 180,
            child: Container(
              height: isSignupscreen ? 385 : 330,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.white10),

              // ............START ---------lOGIN / SIGNUP navigation.............
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /*
                            -------Login---------------------------------------------------------------------
                            */
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSignupscreen = false;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupscreen
                                    ? ColorsPage.maincolor
                                    : ColorsPage.textprimary),
                          ),
                          if (!isSignupscreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 100,
                              color: ColorsPage.buttonlight,
                            ),
                        ],
                      ),
                    ),
                    /*
                            -------Signup------------------------------------------------------------------------
                            */
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSignupscreen = true;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            "SIGNUP",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSignupscreen
                                    ? ColorsPage.maincolor
                                    : ColorsPage.textprimary),
                          ),
                          if (isSignupscreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 100,
                              color: ColorsPage.buttonlight,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                //--------------------------------------Login Fields section path------------------------------
                if (!isSignupscreen) buildLogin(),

                //--------------------------------------Signup Fields section path------------------------------

                if (isSignupscreen) buildSigupscreen(),
              ]),
            ),
          ),

          //----------------------------bottom text---------------------------
          Positioned(
            top: isSignupscreen
                ? MediaQuery.of(context).size.height - 140
                : MediaQuery.of(context).size.height - 190,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  height: 1,
                  width: 110,
                  color: ColorsPage.otherprimarycolor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "or",
                  style: TextStyle(color: ColorsPage.maincolor, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  height: 1,
                  width: 110,
                  color: ColorsPage.otherprimarycolor,
                ),
              ],
            ),
          ),

          //--------------Social Media ------------------------------------------
        ],
      ),
    );
  }

  //--------------------------------------Login Fields section ------------------------------

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          builtextField("Email Address", false, true, Icons.email),
          builtextField("Password", true, false, Icons.vpn_key),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorsPage.maincolor,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        ColorsPage.buttondark,
                        ColorsPage.buttonlight
                      ]),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ]),
                  child: ButtonTheme(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        color: ColorsPage.maincolor,
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }

  //--------------------------------------Signup Fields section ------------------------------

  Container buildSigupscreen() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          builtextField("Email Address", false, true, Icons.email),
          builtextField("Password", true, false, Icons.vpn_key),
          builtextField("Confirm Password", true, false, Icons.vpn_key),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 5),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "By pressing 'Next' you agree to ",
                  style: TextStyle(
                      fontSize: 11,
                      color: ColorsPage.textprimary,
                      letterSpacing: 1)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "our ",
                style: TextStyle(
                    fontSize: 11,
                    color: ColorsPage.textprimary,
                    letterSpacing: 1),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        fontSize: 12, color: Colors.orange, letterSpacing: 1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        ColorsPage.buttondark,
                        ColorsPage.buttonlight
                      ]),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ]),
                  child: ButtonTheme(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        color: ColorsPage.maincolor,
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }

//----------------------------------Text Feild----------------------------------
  Widget builtextField(
      String hintText, bool ispassword, bool isemail, IconData data) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        style: TextStyle(color: ColorsPage.maincolor),
        cursorColor: ColorsPage.otherprimarycolor,
        obscureText: ispassword,
        keyboardType: isemail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: Icon(
              data,
              color: ColorsPage.maincolor,
              size: 19,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
              borderRadius: BorderRadius.all(
                Radius.circular(10.5),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsPage.maincolor),
              borderRadius: BorderRadius.all(
                Radius.circular(10.5),
              ),
            ),
            contentPadding: EdgeInsets.all(10),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, color: Colors.white30)),
      ),
    );
  }
}
/*   children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.white60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "or",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.white60,
                  ),
                ),
              ],*/