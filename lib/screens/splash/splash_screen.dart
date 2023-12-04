import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orzu_grand/screens/main_screen.dart';
import 'package:orzu_grand/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  double _width = 30;

  @override
  void initState() {
    Timer(const Duration(milliseconds: 200), () {
      setState(() {
        _width = 300;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent, systemNavigationBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: COLOR_WHITE,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: AnimatedContainer(
              transformAlignment: Alignment.center,
              duration: const Duration(seconds: 2),
              width: _width,
              height: _width,
              alignment: Alignment.center,
              child: const Image(
                height: 300,
                width: 300,
                image: AssetImage(Assets.imagesLogoMain),
              ),
              onEnd: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => MainScreen()));
              },
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                child: const CircularProgressIndicator(
                  color: COLOR_GREEN,
                ),
              ))
        ],
      ),
    );
  }
}
