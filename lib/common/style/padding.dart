
import 'package:flutter/cupertino.dart';

class APadding{
  APadding._();

  static EdgeInsets screenPadding(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return EdgeInsets.symmetric(horizontal: size.height * .036);
  }
}