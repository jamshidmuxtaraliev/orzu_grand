import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 void setOrientation(bool or) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(or ? [DeviceOrientation.portraitUp] : [DeviceOrientation.landscapeLeft])
      .then((_) {});
}

void clearFocus(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode()); //remove focus
}

double getScreenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(context) {
  return MediaQuery.of(context).size.width;
}

void showSnackeBar(BuildContext context, String message) {
  ScaffoldMessenger.maybeOf(context)?.showSnackBar(SnackBar(content: Text(message)));
}
