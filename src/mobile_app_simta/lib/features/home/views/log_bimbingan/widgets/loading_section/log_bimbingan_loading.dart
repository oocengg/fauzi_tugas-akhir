import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:shimmer/shimmer.dart';

class LogBimbinganLoading extends StatelessWidget {
  const LogBimbinganLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          loadingBimbinganItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingBimbinganItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingBimbinganItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingBimbinganItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingBimbinganItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingBimbinganItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingBimbinganItem(context),
        ],
      ),
    );
  }

  Widget loadingBimbinganItem(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColors.baseShimmerColor,
                      highlightColor: AppColors.highlightShimmerColor,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.neutral200,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Shimmer.fromColors(
                      baseColor: AppColors.baseShimmerColor,
                      highlightColor: AppColors.highlightShimmerColor,
                      child: Container(
                        width: 250,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.neutral200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 20,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 42,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 150,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
