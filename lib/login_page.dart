import 'package:flutter/material.dart';
import 'package:firstflutterapp/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          children: [
            _flutterLogo(),
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _flutterLogo() {
    return Container(
      child: FlutterLogo(),
      padding: EdgeInsets.fromLTRB(0, 200.0, 0, 50.0),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Input Username',
          label: Text('Username'),
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (Colors.blue)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Input Password',
          label: Text('Password'),
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.red),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (password == "flutter123") {
            setState(() {
              text = "Login Success";
              isLoginSuccess = true;
            });
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
              return HomePage(username: username);
            }));
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }

          SnackBar snackBar = SnackBar(
              content: Text(text)
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text("Login"),
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.blue : Colors.red,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
