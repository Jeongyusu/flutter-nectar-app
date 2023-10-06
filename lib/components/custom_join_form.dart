import 'package:flutter/material.dart';

import '../size.dart';
import '../user_repository.dart';
import '../validator_util.dart';
import 'custom_text_form_field.dart';

class CustomJoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _username = TextEditingController();

  CustomJoinForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      //유효성 검사를 위해 form태그 사용
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            text: "Username",
            validate: validateEmail(),
            textController: _username,
          ),
          SizedBox(height: large_gap),
          CustomTextFormField(
            text: "Email",
            validate: validateEmail(),
            textController: _email,
          ),
          SizedBox(height: large_gap),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              textController: _password),
          SizedBox(height: large_gap),
          Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/join");
                  },
                  child: Text.rich(TextSpan()))),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                //formkey가 연결되지 않으면 currentState가 null이다.
                UserRepository repo = UserRepository();
                repo.login(_email.text.trim(), _password.text.trim());
                if (_formKey.currentState!.validate()) {
                  //validator가 null을 리턴하면 true가 된다
                  Navigator.pushNamed(context, "/home"); //화면이 두 장 겹친다.
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
