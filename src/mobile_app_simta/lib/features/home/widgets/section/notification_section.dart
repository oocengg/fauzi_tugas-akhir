import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/home/widgets/item_widget/notification_item.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notifikasi',
                style: TextStyle(
                  fontSize: AppFontSize.heading4,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  color: AppColors.black,
                ),
                maxLines: 1,
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                  fontSize: AppFontSize.text,
                  overflow: TextOverflow.ellipsis,
                  color: AppColors.black,
                ),
                maxLines: 1,
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
  }
}
