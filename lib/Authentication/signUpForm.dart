import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

              ///FULLNAME FIELD
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
                      Icons.person_outline,
                      color: green,
                    ),
                  ),
                  hintText: "Enter Full Name ",
                ),
              ),
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
                  hintText: "Enter Confirm Password ",
                ),
              ),
            ),
///// PHONE NUMBER FIELD
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  contentPadding: const EdgeInsets.all(
                    16.0,
                  ),
                  prefixIcon: CountryCodePicker(
                    initialSelection: '+92',
                    favorite: ['+92', 'PK'],
                    showFlag: true,
                  ),
                  hintText: "Enter Phone Number",
                ),
              ),
            ),
///// DOB FIELD
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  contentPadding: const EdgeInsets.all(
                    16.0,
                  ),
                  prefixIcon: Material(
                    color: Colors.transparent,
                    child: Icon(
                      Icons.calendar_today,
                      color: green,
                    ),
                  ),
                  hintText: "Enter Date of Birth",
                ),
              ),
            ),

            const SizedBox(height: 10.0),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 5.0),
                Text(
                  "Select Gender",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(width: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    child: Text(
                      'Male',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    borderSide: BorderSide(color: green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    child: Text(
                      'Female',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    borderSide: BorderSide(color: green),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.green,
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
