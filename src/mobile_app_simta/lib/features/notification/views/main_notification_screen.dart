import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/notification/provider/main_notification_provider.dart';
import 'package:mobile_app_simta/features/notification/widgets/item_widget/main_notification_item.dart';
import 'package:mobile_app_simta/features/notification/widgets/loading_screen/main_notification_loading.dart';
import 'package:provider/provider.dart';

class MainNotificationScreen extends StatefulWidget {
  const MainNotificationScreen({super.key});

  @override
  State<MainNotificationScreen> createState() => _MainNotificationScreenState();
}

class _MainNotificationScreenState extends State<MainNotificationScreen> {
  onInitCalled() {
    context.read<MainNotificationProvider>().getMainNotificationData();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInitCalled();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          onInitCalled();
        },
        child: SafeArea(
          child: Consumer<MainNotificationProvider>(
            builder: (context, mainNotificationProvider, _) {
              if (mainNotificationProvider.mainNotificationState ==
                  AppState.initial) {
                return const SizedBox.shrink();
              } else if (mainNotificationProvider.mainNotificationState ==
                  AppState.loading) {
                return const MainNotificationLoading();
              } else if (mainNotificationProvider.mainNotificationState ==
                  AppState.loaded) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Notifikasi',
                            style: TextStyle(
                              fontSize: AppFontSize.heading3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              warningReadNotification(context);
                            },
                            icon: const Icon(
                              FontAwesomeIcons.eye,
                              color: AppColors.black,
                            ),
                          ),
                        ],
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
                        false,
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
                        false,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      mainNotificationItem(
                        'Topik Skripsi',
                        'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                        '2 Jam',
                        true,
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
                        false,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      mainNotificationItem(
                        'Topik Skripsi',
                        'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                        '2 Jam',
                        false,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      mainNotificationItem(
                        'Topik Skripsi',
                        'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                        '2 Jam',
                        true,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      mainNotificationItem(
                        'Topik Skripsi',
                        'Topik yang kamu ajukan telah disetujui oleh dosen pembimbing yang bersangkutan.',
                        '2 Jam',
                        true,
                      ),
                    ],
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }

  warningReadNotification(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Baca Notifikasi',
            style: TextStyle(
              fontSize: AppFontSize.heading3,
            ),
          ),
          content: const Text(
            'Apakah Anda yakin ingin menandai semua notifikasi sebagai sudah dibaca?',
            style: TextStyle(
              fontSize: AppFontSize.text,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Batal',
                style: TextStyle(color: AppColors.error500),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menandai notifikasi sebagai sudah dibaca di sini
                // Misalnya: markAllNotificationsAsRead();
                Navigator.of(context).pop();
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  AppColors.primary500,
                ),
              ),
              child: const Text(
                'Baca Semua',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
