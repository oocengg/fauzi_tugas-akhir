import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget dosenItem(
  BuildContext context,
  String backgroundImage,
  String name,
  String nip,
  int kuotaNow,
  int kuota,
  Function() onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.neutral100,
      ),
      child: Column(
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(65),
              image: DecorationImage(
                image: AssetImage(
                  backgroundImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.heading5,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            nip,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppFontSize.caption,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color:
                  kuotaNow != kuota ? AppColors.success500 : AppColors.error500,
            ),
            child: Text(
              '$kuotaNow / $kuota',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.heading5,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
