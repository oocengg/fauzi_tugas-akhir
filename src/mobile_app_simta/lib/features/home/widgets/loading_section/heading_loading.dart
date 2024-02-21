import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:shimmer/shimmer.dart';

class HeadingLoading extends StatelessWidget {
  const HeadingLoading({super.key});

  @override
  Widget build(BuildContext context) {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: AppColors.primary400,
                    highlightColor: AppColors.primary500,
                    child: Container(
                      width: 100,
                      height: 20,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1EFEF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Shimmer.fromColors(
                    baseColor: AppColors.primary400,
                    highlightColor: AppColors.primary500,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 35,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1EFEF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Shimmer.fromColors(
                baseColor: AppColors.primary400,
                highlightColor: AppColors.primary500,
                child: Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.neutral200,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Shimmer.fromColors(
            baseColor: AppColors.primary400,
            highlightColor: AppColors.primary500,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: const Color(0xFFF1EFEF),
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
