import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/dashboard/provider/dashboard_provider.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
      builder: (context, dashboardProvider, _) {
        return Scaffold(
          body: IndexedStack(
            index: dashboardProvider.selectedIndex,
            children: dashboardProvider.pages,
          ),
          bottomNavigationBar: BottomAppBar(
            height: 75,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    dashboardProvider.icon.length,
                    (index) {
                      final icon = dashboardProvider.icon[index];
                      final iconNotActive =
                          dashboardProvider.notActiveIcon[index];
                      return GestureDetector(
                        onTap: () {
                          dashboardProvider.setSelectedIndex(context, index);
                        },
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Icon(
                                  index == dashboardProvider.selectedIndex
                                      ? icon
                                      : iconNotActive,
                                  size: 25,
                                  color:
                                      index == dashboardProvider.selectedIndex
                                          ? AppColors.primary500
                                          : AppColors.neutral400,
                                ),
                                index == 2
                                    ? Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          width: 10,
                                          height: 10,
                                          decoration: const BoxDecoration(
                                            color: AppColors.error500,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      )
                                    : const SizedBox.shrink()
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              dashboardProvider.titleIcon[index],
                              style: TextStyle(
                                color: index == dashboardProvider.selectedIndex
                                    ? AppColors.primary500
                                    : AppColors.neutral400,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
