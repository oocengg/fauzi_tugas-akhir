import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/dashboard/provider/dashboard_provider.dart';
import 'package:mobile_app_simta/features/home/provider/notification_provider.dart';
import 'package:mobile_app_simta/features/home/widgets/item_widget/notification_item.dart';
import 'package:mobile_app_simta/features/home/widgets/loading_section/notification_loading.dart';
import 'package:provider/provider.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationProvider>(
      builder: (context, notificationProvider, _) {
        if (notificationProvider.notificationState == AppState.initial) {
          return const SizedBox.shrink();
        } else if (notificationProvider.notificationState == AppState.loading) {
          return const NotificationLoading();
        } else if (notificationProvider.notificationState == AppState.loaded) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Notifikasi',
                          style: TextStyle(
                            fontSize: AppFontSize.heading4,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                            color: AppColors.black,
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: AppColors.error500,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '20',
                            style: TextStyle(
                              fontSize: AppFontSize.caption,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<DashboardProvider>(context, listen: false)
                            .setSelectedIndex(context, 2);
                      },
                      child: const Text(
                        'Lihat Semua',
                        style: TextStyle(
                          fontSize: AppFontSize.text,
                          overflow: TextOverflow.ellipsis,
                          color: AppColors.black,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                notificationItem(
                  'Topik Skripsi',
                  'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                  '2 Jam',
                ),
                const SizedBox(
                  height: 14,
                ),
                notificationItem(
                  'Topik Skripsi',
                  'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                  '2 Jam',
                ),
                const SizedBox(
                  height: 14,
                ),
                notificationItem(
                  'Topik Skripsi',
                  'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                  '2 Jam',
                ),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
