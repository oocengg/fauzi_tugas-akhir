import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget pendafataranProposalItem(
  final String title,
  final String desc,
  List<String> scope,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: AppFontSize.text,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      title == 'Bidang Topik'
          ? SizedBox(
              height: 32,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.aqua700,
                  ),
                  child: Text(
                    scope[index],
                    style: const TextStyle(
                      fontSize: AppFontSize.text,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: scope.length,
              ),
            )
          : Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.neutral50,
              ),
              child: Text(
                desc,
                style: const TextStyle(
                  fontSize: AppFontSize.text,
                ),
              ),
            ),
    ],
  );
}
