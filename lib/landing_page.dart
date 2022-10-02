import 'package:flutter/material.dart';
import 'package:firstflutterapp/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              _image(),
              _loginPage(context),
            ],
          ),
        ),
    );
  }

  Widget _image() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 300, 0, 20),
      child: Image.asset('assets/images/Picture1.png'),
    );
  }
  
  Widget _loginPage(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
        },
        child: Text('Login'),
      ),
    );
  }
}
