import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget persetujuanDosenItem(
  BuildContext context,
  final String penguji,
  final String namaDosen,
  final String keterangan,
  final String statusPersetujuan,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  penguji,
                  style: const TextStyle(
                    fontSize: AppFontSize.heading5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: statusPersetujuan == 'Disetujui'
                      ? AppColors.success500
                      : statusPersetujuan == 'Ditolak'
                          ? AppColors.error500
                          : statusPersetujuan == 'Menunggu Persetujuan'
                              ? AppColors.warning500
                              : AppColors.neutral500,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  statusPersetujuan,
                  style: const TextStyle(
                    fontSize: AppFontSize.text,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
          Text(
            namaDosen,
            style: const TextStyle(
              fontSize: AppFontSize.text,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: AppColors.neutral100,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Keterangan :',
            style: TextStyle(
              fontSize: AppFontSize.text,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            keterangan,
            style: const TextStyle(
              fontSize: AppFontSize.text,
              fontWeight: FontWeight.normal,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
