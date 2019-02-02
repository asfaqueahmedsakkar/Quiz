import 'package:flutter/material.dart';
import 'package:flutter_q/Pages/HomePage.dart';
import 'package:flutter_q/Pages/SignUpPage.dart';
import 'package:flutter_q/Widget/CustomInput.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          height: height,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              Container(
                alignment: Alignment.center,
                height: 120.0,
                width: 120.0,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Text("LOGO"),
              ),
              Expanded(
                child: Container(),
              ),
              CustomInput(),
              CustomInput(),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 16.0,
                ),
                alignment: Alignment.centerRight,
                child: Container(
                  height: 36.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: RawMaterialButton(
                    padding: EdgeInsets.all(0.0),
                    constraints: BoxConstraints.expand(),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(title: "Home"),
                          ),
                          (route) => false);
                    },
                    child: Text("Log In"),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: 60.0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have account?"),
                      FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontWeight: FontWeight.w900),
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
    );
  }
}
