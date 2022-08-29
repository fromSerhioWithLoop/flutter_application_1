import 'package:flutter/material.dart';
import '../presentation/login_view_model.dart';
import 'package:flutter_application_1/widgets/buttons/example_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageA();
}

class _LoginPage extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginPageA extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginData _loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        width: 500,
        //height: 70.0,
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Enter user name";
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    this._loginData.username = value;
                  },
                  decoration: InputDecoration(
                      hintText: "ktulhu@crab.com",
                      labelText: "Username (eMail)"),
                ),
                TextFormField(
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value.length < 4) {
                        return "Too short password";
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      this._loginData.password = value;
                    },
                    decoration: InputDecoration(
                        hintText: "Password", labelText: "Password")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: const Text('Sign Out'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: SizedBox(
                        height: 50, width: 100,
                        child: ExampleButton(
                          child: const Text('login'),
                          buttonAction: () {
                          
                        },),
                      )
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
//Scaffold(
      //  appBar: AppBar(title: const Text('Login')),
      //  body: const LoginPage(),
      //),
      //final VoidCallback buttonAction;