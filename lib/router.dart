import 'package:chatta/home.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Page Not Found'),
        ),
        body: Center(
          child: Text('404 Error'),
        ),
      );
    });
  }
}
