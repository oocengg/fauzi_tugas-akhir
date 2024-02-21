import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:shimmer/shimmer.dart';

class NewsLoading extends StatelessWidget {
  const NewsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Shimmer.fromColors(
          baseColor: AppColors.baseShimmerColor,
          highlightColor: AppColors.highlightShimmerColor,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 180,
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
            width: MediaQuery.of(context).size.width * 0.85,
            height: 180,
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
            width: MediaQuery.of(context).size.width * 0.85,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.neutral200,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        scrollPhysics: const NeverScrollableScrollPhysics(),
        height: 180.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
