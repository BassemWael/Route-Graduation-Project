import 'package:flutter/material.dart';
import 'package:project/utils/app_assets.dart';
import 'package:project/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = "splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        Image.asset(AppAssets.movies),
        const Spacer(
          flex: 1,
        ),
        Image.asset(AppAssets.route),
      ],
    );
  }
}
