import 'package:empresas_flutter/views/login_view.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  SplashScreenWidget({this.screenDestiny});
  final Widget screenDestiny;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 3,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff8527bb),
              Color(0xffac1c9f),
              Color(0xffb22a76),
              Color(0xffce9cb8),
            ],
          ),
          navigateAfterSeconds: LoginView(),
          useLoader: false,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo_home_icon.png"),
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );
  }
}
