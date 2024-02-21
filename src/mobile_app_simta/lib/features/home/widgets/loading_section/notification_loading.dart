import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:shimmer/shimmer.dart';

class NotificationLoading extends StatelessWidget {
  const NotificationLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Notifikasi',
                style: TextStyle(
                  fontSize: AppFontSize.heading4,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  color: AppColors.black,
                ),
                maxLines: 1,
              ),
              const SizedBox(
                width: 12,
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          loadingNotificationItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingNotificationItem(context),
          const SizedBox(
            height: 14,
          ),
          loadingNotificationItem(context),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }

  Widget loadingNotificationItem(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: AppColors.baseShimmerColor,
                highlightColor: AppColors.highlightShimmerColor,
                child: Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.baseShimmerColor,
            highlightColor: AppColors.highlightShimmerColor,
            child: Container(
              width: 150,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.baseShimmerColor,
            highlightColor: AppColors.highlightShimmerColor,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.baseShimmerColor,
            highlightColor: AppColors.highlightShimmerColor,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
