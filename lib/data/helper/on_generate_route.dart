import 'package:flutter/material.dart';
import 'package:store_api/features/home/presentation/views/home_view.dart';
import 'package:store_api/features/home/presentation/views/update_product.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'home':
      return MaterialPageRoute(builder: (context) => HomeView());
    case 'update_product':
      return MaterialPageRoute(builder: (context) => UpdateProduct());
    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  }
}
