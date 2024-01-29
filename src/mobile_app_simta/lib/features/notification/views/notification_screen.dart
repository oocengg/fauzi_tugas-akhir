import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/notification/widgets/item_widget/main_notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text(
                'Notifikasi',
                style: TextStyle(
                  fontSize: AppFontSize.heading3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Terbaru',
                style: TextStyle(
                  fontSize: AppFontSize.heading4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '7 Hari Terakhir',
                style: TextStyle(
                  fontSize: AppFontSize.heading4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Terdahulu',
                style: TextStyle(
                  fontSize: AppFontSize.heading4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
              const SizedBox(
                height: 8,
              ),
              mainNotificationItem(
                'Topik Skripsi',
                'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                '2 Jam',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
