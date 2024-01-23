import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/dashboard/views/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    const duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary500,
      body: Stack(
        children: [
          Center(
            child:
                // Image.asset(
                //   'assets/images/insert_app_logo.png',
                //   width: MediaQuery.of(context).size.width * 0.8,
                // ),
                Text('Splash Screen'),
          ),
          // Positioned(
          //   bottom: 35,
          //   right: 0,
          //   left: 0,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       const Text(
          //         'POWERED BY',
          //         style: TextStyle(
          //           fontSize: AppFontSize.caption,
          //           fontWeight: AppFontWeight.captionRegular,
          //           letterSpacing: 1.5,
          //           color: Colors.white,
          //         ),
          //       ),
          //       const SizedBox(
          //         height: 12,
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Container(
          //             color: AppColors.aqua100,
          //             width: 37,
          //             height: 37,
          //             child: const Center(
          //               child: Text(
          //                 'Logo',
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //             color: AppColors.aqua100,
          //             width: 37,
          //             height: 37,
          //             child: const Center(
          //               child: Text(
          //                 'Logo',
          //               ),
          //             ),
          //           ),
          //           // Image.asset(
          //           //   "assets/images/pis_logo.png",
          //           //   width: 37,
          //           //   height: 37,
          //           // ),
          //           // Image.asset(
          //           //   "assets/images/polinema.png",
          //           //   width: 48,
          //           //   height: 48,
          //           // ),
          //         ],
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
