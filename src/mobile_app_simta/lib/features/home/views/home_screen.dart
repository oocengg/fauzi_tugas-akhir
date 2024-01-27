import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/home/widgets/section/bimbingan_section.dart';
import 'package:mobile_app_simta/features/home/widgets/section/heading_section.dart';
import 'package:mobile_app_simta/features/home/widgets/section/news_section.dart';
import 'package:mobile_app_simta/features/home/widgets/section/notification_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 290,
              color: AppColors.primary500,
            ),
            const Column(
              children: [
                HeadingSection(),
                NewsSection(),
                SizedBox(
                  height: 24,
                ),
                NotificationSection(),
                SizedBox(
                  height: 24,
                ),
                BimbinganSection(),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
