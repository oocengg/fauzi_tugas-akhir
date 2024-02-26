import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/home/provider/bimbingan_provider.dart';
import 'package:mobile_app_simta/features/home/provider/heading_provider.dart';
import 'package:mobile_app_simta/features/home/provider/news_provider.dart';
import 'package:mobile_app_simta/features/home/provider/notification_provider.dart';
import 'package:mobile_app_simta/features/home/widgets/section/bimbingan_section.dart';
import 'package:mobile_app_simta/features/home/widgets/section/heading_section.dart';
import 'package:mobile_app_simta/features/home/widgets/section/news_section.dart';
import 'package:mobile_app_simta/features/home/widgets/section/notification_section.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  onInitCalled() {
    context.read<HeadingProvider>().getHeadingData();
    context.read<NewsProvider>().getNewsData();
    context.read<NotificationProvider>().getNotificationData();
    context.read<BimbinganProvider>().getBimbinganData();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInitCalled();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          onInitCalled();
        },
        child: SingleChildScrollView(
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
      ),
    );
  }
}
