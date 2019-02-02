import 'package:flutter/material.dart';
import 'package:flutter_q/Pages/HomePage.dart';
import 'package:flutter_q/Widget/CustomInput.dart';

class SignUpPage extends StatelessWidget {
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
                alignment: Alignment.bottomRight,
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Icons/PersonPlaceholder.png"),
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_enhance),
                  ),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: Container(),
              ),
              CustomInput(),
              CustomInput(),
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
                    child: Text("Sign Up"),
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
                      Text("Already have account?"),
                      FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Log In",
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
