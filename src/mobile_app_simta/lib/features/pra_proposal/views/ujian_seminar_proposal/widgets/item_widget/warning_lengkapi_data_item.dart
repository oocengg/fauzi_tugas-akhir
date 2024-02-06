import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget warningLengkapiDataItem(
  final String description,
) {
  return Container(
    padding: const EdgeInsets.all(8),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: AppColors.warning50,
    ),
    child: Center(
      child: Text(
        description,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppFontSize.caption,
          color: AppColors.warning500,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
