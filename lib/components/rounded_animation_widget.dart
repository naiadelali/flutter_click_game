import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class RoundedAnimationWidget extends StatefulWidget {
  @override
  _RoundedAnimationWidgetState createState() => _RoundedAnimationWidgetState();
}

class _RoundedAnimationWidgetState extends State<RoundedAnimationWidget> {
  static final _random = Random();

  Color _color = Colors.red;
  double _width = 100;
  double _height = 100;
  double _radius = 50;
  Alignment _alignment = Alignment(0.5, 0.5);

  int _score = 0;

  void _randomize() {
    _color = Color.fromARGB(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
    );
    _width = _random.nextDouble() * 120 + 10;
    _height = _random.nextDouble() * 120 + 10;
    _radius = _random.nextDouble() * 50 + 10;
    _alignment = Alignment(
      _random.nextDouble() * 2 - 1,
      _random.nextDouble() * 2 - 1,
    );
  }

  void _increaseScore() {
    _score++;
  }

  late Timer _timer;
  int _countDown = 10;
  bool _isPlaying = false;

  void startGame() {
    _score = 0;
    _countDown = 10;
    _isPlaying = true;
    _randomize();
    _startTimer();
  }

  void _endGame() {
    _isPlaying = false;
  }

  void _startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          print(_countDown);
          if (_countDown < 1) {
            _endGame();
            timer.cancel();
          } else {
            _countDown = _countDown - 1;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pontos: $_score',
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(
                onPressed: () => setState(() {
                  if (!_isPlaying) {
                    startGame();
                  }
                }),
                child: (!_isPlaying)
                    ? Text('INICIAR')
                    : Text('Tempo: $_countDown'),
              ),
              c(
                curve: Curves.ease,
                duration: Duration(milliseconds: 500),
                alignment: _alignment,
                child: Container(
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(_radius),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
