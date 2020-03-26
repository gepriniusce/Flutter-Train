import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Animated-Widget示例"),
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
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween(begin: 1.0, end: 5.0).animate(_animationController)
      ..addListener(() {
        print('addListener=>' + _animation.value.toString());
        setState(() {});
      })
      ..addStatusListener((status) {
        print('addStatusListener=>$status');
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyLogo(
          animation: _animation,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animationController.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

class MyLogo extends AnimatedWidget {
  final Tween<double> _rotateAnim = Tween<double>(begin: 0.0, end: 20.0);
  final Tween<double> _scaleAnim = Tween<double>(begin: 1.0, end: 10.0);
  final Tween<Color> _colorAnim =
      Tween<Color>(begin: Colors.yellow, end: Colors.green);

  MyLogo({Key key, @required Animation animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> _anim = listenable;
    return Transform.scale(
        scale: _scaleAnim.evaluate(_anim),
        child: Transform.rotate(
          angle: _rotateAnim.evaluate(_anim),
          child: Container(
            width: _anim.value,
            height: _anim.value,
            child: FlutterLogo(),
          ),

          //Curves.
        ));
  }
}
