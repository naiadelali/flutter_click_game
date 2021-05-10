import 'package:flutter/material.dart';

import 'components/rounded_animation_widget.dart';

class ClickGamePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF470047),
        child: RoundedAnimationWidget(),
      ),
    );
  }
}


