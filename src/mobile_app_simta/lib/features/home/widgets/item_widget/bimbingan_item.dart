import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget bimbinganItem(
  String title,
  String dosenPembimbing,
  String dateTime,
  String statusBimbingan,
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
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    dosenPembimbing,
                    style: const TextStyle(
                      fontSize: AppFontSize.text,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              FontAwesomeIcons.chevronRight,
              size: 16,
            )
          ],
        ),
        const SizedBox(
          height: 42,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: statusBimbingan == 'Disetujui'
                ? AppColors.success500
                : statusBimbingan == 'Ditolak'
                    ? AppColors.error500
                    : statusBimbingan == 'Menunggu Persetujuan'
                        ? AppColors.warning500
                        : AppColors.neutral500,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Text(
            statusBimbingan,
            style: const TextStyle(
              fontSize: AppFontSize.text,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
