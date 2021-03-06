import 'package:dro_health/ui/checkout.dart';
import 'package:dro_health/ui/home.dart';
import 'package:dro_health/ui/product_detail.dart';
import 'package:flutter/material.dart';

Widget makeRoute(
    {@required BuildContext context,
    @required String routeName,
    Object arguments}) {
  final Widget child =
      _buildRoute(context: context, routeName: routeName, arguments: arguments);
  return child;
}

Widget _buildRoute({
  @required BuildContext context,
  @required String routeName,
  Object arguments,
}) {
  switch (routeName) {
    case '/':
      return Home();
      break;
    case '/productDetail':
      return ProductDetail();
      break;
    case '/checkout':
      return Checkout();
  }
}
