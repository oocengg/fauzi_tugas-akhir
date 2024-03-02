import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget dosenPembimbingItem(
  BuildContext context,
  String backgroundImage,
  String bimbingan,
  String name,
  String nip,
  int kuotaNow,
  int kuota,
) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: AppColors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.07),
          spreadRadius: 0,
          blurRadius: 20,
          offset: const Offset(4, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: bimbingan == 'Utama'
                ? AppColors.primary500
                : AppColors.warning500,
          ),
          child: Text(
            'Pemb. $bimbingan',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
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
        const SizedBox.shrink(),
        IconButton(
          padding: const EdgeInsets.all(10),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.success500),
          ),
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.whatsapp,
            color: AppColors.white,
            size: 30,
          ),
        ),
      ],
    ),
  );
}
