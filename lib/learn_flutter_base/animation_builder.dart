import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("AnimationBuilder示例"),
          ),
          body: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  Animation<double> _curvedAnim;
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _curvedAnim = CurvedAnimation(
        parent: _animationController, curve: Curves.fastLinearToSlowEaseIn);
    _animation = Tween(begin: -1.0, end: 0.0).animate(_curvedAnim)
      ..addStatusListener(myListener);
    _animationController.forward();
  }

  void myListener(status) {
    if (status == AnimationStatus.completed) {
      _animationController.removeStatusListener(myListener);
      _animationController.reset();
      _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn));
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, Widget child) {
              return Transform(
                transform: Matrix4.translationValues(
                    _animation.value * _screenWidth, 0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  child: FlutterLogo(),
                ),
              );
            }));
  }
}
