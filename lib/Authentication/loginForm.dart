import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniteglobe/Authentication/forgetPassword.dart';
import 'package:uniteglobe/Const/color.dart';
import 'package:uniteglobe/Home/bottomAppBar.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Image.asset(globeImage),
            ),

            const SizedBox(height: 10.0),
/////EMAIL FIELD
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // validator: (String value) {
                //   if (value.isEmpty) {
                //     return "Required";
                //   }
                //   return null;
                // },
                cursorColor: green,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  contentPadding: const EdgeInsets.all(
                    16.0,
                  ),
                  prefixIcon: Material(
                    color: Colors.transparent,
                    child: Icon(
                      Icons.email,
                      color: green,
                    ),
                  ),
                  hintText: "Enter Email ",
                ),
              ),
            ),
/////PASSWORD FIELD
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                // validator: (String value) {
                //   if (value.isEmpty) {
                //     return "Required";
                //   }
                //   return null;
                // },
                cursorColor: green,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  contentPadding: const EdgeInsets.all(
                    16.0,
                  ),
                  prefixIcon: Material(
                    color: Colors.transparent,
                    child: Icon(
                      Icons.lock,
                      color: green,
                    ),
                  ),
                  hintText: "Enter Password ",
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text("Login"),
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => BottomBar(1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassword(),
                  ),
                );
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
