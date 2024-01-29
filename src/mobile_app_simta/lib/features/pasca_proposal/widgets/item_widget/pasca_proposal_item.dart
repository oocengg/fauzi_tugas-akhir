import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget pascaProposalItem(
  BuildContext context,
  String backgroundImage,
  String title,
) {
  return Container(
    padding: const EdgeInsets.all(20),
    height: 170,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: AppColors.aqua100,
      image: DecorationImage(
        image: AssetImage(
          backgroundImage,
        ),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          spreadRadius: 0,
          blurRadius: 20,
          offset: const Offset(4, 4),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: AppFontSize.heading4,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const Icon(
          FontAwesomeIcons.chevronRight,
          size: 20,
          color: AppColors.white,
        )
      ],
    ),
  );
}
