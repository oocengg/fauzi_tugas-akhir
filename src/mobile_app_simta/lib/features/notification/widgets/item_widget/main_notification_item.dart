import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget mainNotificationItem(
  String title,
  String description,
  String dateTime,
) {
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
            const Row(
              children: [
                Icon(
                  FontAwesomeIcons.circleInfo,
                  size: 14,
                  color: AppColors.neutral500,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Info',
                  style: TextStyle(
                    fontSize: AppFontSize.caption,
                    color: AppColors.neutral500,
                  ),
                ),
              ],
            ),
            Text(
              dateTime,
              style: const TextStyle(
                fontSize: AppFontSize.caption,
                color: AppColors.neutral500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppFontSize.heading5,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: AppFontSize.text,
          ),
        ),
      ],
    ),
  );
}
