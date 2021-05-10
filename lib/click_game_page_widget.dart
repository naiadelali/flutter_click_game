import 'package:flutter/material.dart';
import 'components/rounded_animation_widget.dart';
import 'theme/app_theme.dart';

bool _isLight = false;

class ClickGamePage extends StatefulWidget {
  @override
  _ClickGamePageState createState() => _ClickGamePageState();
}

class _ClickGamePageState extends State<ClickGamePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isLight ? lightTheme : darkTheme,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                lampColor(),
                RoundedAnimationWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget lampColor() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isLight = !_isLight;
        });
      },
      child: Container(
        alignment: Alignment.topCenter,
        child: RotationTransition(
          turns: new AlwaysStoppedAnimation(180 / 360),
          child: Image.asset(
            'assets/images/lamp.png',
            width: 60,
          ),
        ),
      ),
    );
  }
}
