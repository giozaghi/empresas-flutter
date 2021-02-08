import 'package:empresas_flutter/routes/const_routes.dart';
import 'package:empresas_flutter/views/enterprise_view.dart';
import 'package:empresas_flutter/views/home_view.dart';
import 'package:empresas_flutter/views/login_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> pathRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeViewRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case LoginViewRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case EnterpriseViewRoute:
        return MaterialPageRoute(builder: (_) => EnterpriseView());
    }
  }
}