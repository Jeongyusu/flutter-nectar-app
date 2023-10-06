import 'package:flutter/material.dart';
import 'package:nectar/size.dart';

import '../components/custom_join_form.dart';
import '../components/custom_login_form.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

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
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
            Text(
              "Enter your credentials to continue",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            SizedBox(height: large2_gap),
            CustomJoinForm(),
          ],
        ),
      ),
    );
  }
}
