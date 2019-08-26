import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/logomd.png',
        fit: BoxFit.fill,
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}
