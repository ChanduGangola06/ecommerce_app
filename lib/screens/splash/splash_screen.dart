import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 100.r,
                  width: 100.r,
                  color: Colors.white,
                )
                    .animate(delay: 3.seconds)
                    .moveX(duration: 500.ms, begin: 0, end: -200),
              ],
            ),
            Gap(12.w),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Assets.png.splashLogo.image(height: 100.h, width: 200.w),
                  ],
                ),
                Container(
                  color: Colors.white,
                  height: 100.r,
                  width: 280.r,
                )
                    .animate(delay: 2.seconds)
                    .moveX(duration: 500.ms, begin: 0.0, end: 280.0)
                    .callback(callback: (value) {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color hexToColor(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
