import 'package:flutter/material.dart';
import 'package:uniteglobe/Authentication/signUpForm.dart';
import 'package:uniteglobe/Authentication/loginForm.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool formVisible;
  int _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = true;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    "images/social.jpg",
                    fit: BoxFit.cover,
                  ),
                  foregroundDecoration:
                      BoxDecoration(color: Colors.green.withAlpha(150)),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        "WELCOME TO OUR ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: Colors.white),
                      ),
                      Text(
                        "UNITEGLOBE",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 10.0),
                FlatButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: _formsIndex == 1 ? Colors.green : Colors.black,
                        decoration: _formsIndex == 1
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        fontSize: _formsIndex == 1 ? 22 : 16),
                  ),
                  onPressed: () {
                    setState(() {
                      formVisible = true;
                      _formsIndex = 1;
                    });
                  },
                ),
                const SizedBox(width: 5.0),
                FlatButton(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        color: _formsIndex == 2 ? Colors.green : Colors.black,
                        decoration: _formsIndex == 2
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        fontSize: _formsIndex == 2 ? 22 : 16),
                  ),
                  onPressed: () {
                    setState(() {
                      formVisible = true;
                      _formsIndex = 2;
                    });
                  },
                ),
                const SizedBox(width: 10.0),
              ],
            ),
            Container(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: _formsIndex == 1 ? LoginForm() : SignupForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
