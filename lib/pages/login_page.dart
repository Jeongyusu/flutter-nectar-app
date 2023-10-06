import 'package:flutter/material.dart';
import 'package:nectar/size.dart';

import '../components/custom_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: large_gap),
            SizedBox(
              child: Image.asset("assets/dang.png"),
              width: 70,
              height: 70,
            ),
            SizedBox(height: large2_gap),
            Text(
              "Loging",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
            Text(
              "Enter your emails and password",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            SizedBox(height: large2_gap),
            CustomLoginForm(),
          ],
        ),
      ),
    );
  }
}
