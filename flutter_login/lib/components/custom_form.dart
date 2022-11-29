import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();    // 글로벌 키

  @override
  Widget build(BuildContext context) {
    return Form(
       key: _formKey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(height: medium_gap,),
          CustomTextFormField("Password"),
          SizedBox(height: large_gap,),
          TextButton(onPressed: (){
            if(_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, "/home");
            }
          },
              child: Text("Login"))
        ],
      ),
    );
  }
}
