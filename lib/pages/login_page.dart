import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_form.dart';
import 'package:flutter_login/size.dart';
import '../components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
              SizedBox(height: xlarge_gap,),
            Logo("Login"),
            SizedBox(height: large_gap,),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
