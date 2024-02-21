import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/home/provider/heading_provider.dart';
import 'package:mobile_app_simta/features/home/widgets/loading_section/heading_loading.dart';
import 'package:provider/provider.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HeadingProvider>(
      builder: (context, headingProvider, _) {
        if (headingProvider.headingState == AppState.initial) {
          return const SizedBox.shrink();
        } else if (headingProvider.headingState == AppState.loading) {
          return const HeadingLoading();
        } else if (headingProvider.headingState == AppState.loaded) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 56,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Halo!',
                            style: TextStyle(
                              fontSize: AppFontSize.heading4,
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            'Muh. Fauzi Ramadhan Nugraha',
                            style: TextStyle(
                              fontSize: AppFontSize.heading3,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              color: AppColors.white,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(14),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.jpeg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  '\' Pengerjaan Skripsi \'',
                  style: TextStyle(
                    fontSize: AppFontSize.heading4,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
