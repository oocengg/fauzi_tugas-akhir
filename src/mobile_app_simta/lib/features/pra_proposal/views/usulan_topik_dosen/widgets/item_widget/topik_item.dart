import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/views/detail_topik_screen.dart';

Widget topikItem(
  BuildContext context,
  final String title,
  final String dosen,
  final String type,
  final String claim,
  final List<String> scope,
  final String description,
) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailTopikScreen(
            title: title,
            dosen: dosen,
            description: description,
            claim: claim,
            type: type,
            scope: scope,
          ),
        ),
      );
    },
    child: Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: AppFontSize.heading5,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                FontAwesomeIcons.chevronRight,
                size: 20,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            dosen,
            style: const TextStyle(
              fontSize: AppFontSize.text,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: type == 'Pengembangan'
                        ? AppColors.blue500
                        : AppColors.neutral500,
                  ),
                  child: Text(
                    type,
                    style: const TextStyle(
                      fontSize: AppFontSize.text,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: claim == 'Sudah Diambil'
                        ? AppColors.error500
                        : claim == 'Dipilih'
                            ? AppColors.warning500
                            : AppColors.success500,
                  ),
                  child: Text(
                    claim,
                    style: const TextStyle(
                      fontSize: AppFontSize.text,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
