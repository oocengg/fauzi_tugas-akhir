import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

Widget proposalSayaItem(
  final String title,
  final String desc,
  List<String> scope,
  final bool sudahSubmit,
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
          : title == 'Status'
              ? Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            sudahSubmit
                                ? FontAwesomeIcons.circle
                                : FontAwesomeIcons.circleCheck,
                            size: 20,
                            color: sudahSubmit
                                ? AppColors.neutral400
                                : AppColors.primary500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Flexible(
                            child: Text(
                              'Draft (proposal BELUM diajukan ke calon dosen pembimbing)',
                              style: TextStyle(
                                fontSize: AppFontSize.text,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            sudahSubmit
                                ? FontAwesomeIcons.circleCheck
                                : FontAwesomeIcons.circle,
                            size: 20,
                            color: sudahSubmit
                                ? AppColors.primary500
                                : AppColors.neutral400,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Flexible(
                            child: Text(
                              'Submit (proposal SUDAH diajukan ke dosen pembimbing)',
                              style: TextStyle(
                                fontSize: AppFontSize.text,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
