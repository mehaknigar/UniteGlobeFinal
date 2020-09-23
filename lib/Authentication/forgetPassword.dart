import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';

class ForgetPassword extends StatelessWidget {
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('FORGET PASSWORD'),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Please Enter Your Email Address Below'),
                ),
              ],
            ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Back")),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text("Send"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
