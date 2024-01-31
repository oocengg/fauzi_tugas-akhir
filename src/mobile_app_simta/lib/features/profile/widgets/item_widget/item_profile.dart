import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget itemProfile(
  String title,
  IconData icon,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Icon(
            icon,
            color: title == 'Keluar' ? AppColors.error500 : AppColors.black,
          ),
          const SizedBox(
            width: 14,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppFontSize.heading5,
              color: title == 'Keluar' ? AppColors.error500 : AppColors.black,
            ),
          ),
        ],
      ),
      Icon(
        FontAwesomeIcons.chevronRight,
        size: 20,
        color: title == 'Keluar' ? AppColors.error500 : AppColors.black,
      )
    ],
  );
}
