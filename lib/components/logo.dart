import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/dang.png",
            width: 80,
            height: 80,
          ),
          Text(
            "nectar",
            style: TextStyle(fontSize: 60, color: Colors.white),
          )
        ],
      ),
    );
  }
}
