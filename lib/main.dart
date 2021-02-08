import 'package:empresas_flutter/routes/routes.dart';
import 'package:empresas_flutter/views/login_view.dart';
import 'package:empresas_flutter/views/splash.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empresas Flutter',
      debugShowCheckedModeBanner: false,
      home:  SplashScreenWidget(
        screenDestiny: LoginView(),
    ),
      onGenerateRoute: Routes.pathRoute,
    );
  }
}
