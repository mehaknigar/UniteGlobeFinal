import 'package:flutter/material.dart';
import 'package:uniteglobe/Const/color.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: green,
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          // key: formKey,
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 20, 25, 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(5, 5),
                    blurRadius: 10.0,
                  )
                ]),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 14.0),
                TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Your Name";
                    }
                    return null;
                  },
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
                        Icons.person,
                        color: green,
                      ),
                    ),
                    hintText: " Name ",
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Your Email";
                    }
                    return null;
                  },
                  cursorColor: green,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: green),
                    ),
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
                    hintText: " Email ",
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Your Message...";
                    }
                    return null;
                  },
                  cursorColor: green,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: green)),
                    contentPadding: const EdgeInsets.all(
                      16.0,
                    ),
                    hintText: " Message ",
                  ),
                  maxLines: 5,
                ),
                const SizedBox(height: 16.0),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(),
                  child: RaisedButton(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    highlightElevation: 0,
                    textColor: Colors.white,
                    color: green,
                    onPressed: () => {},
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
