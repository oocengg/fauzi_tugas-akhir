import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/features/log_bimbingan/widgets/item_widget/log_bimbingan_item.dart';

class LogBimbinganScreen extends StatelessWidget {
  const LogBimbinganScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Log Bimbingan',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: AppColors.black,
          ),
        ),
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            logBimbinganItem(
              context,
              'Diskusi Scope Aplikasi SIM-TA',
              'Habibie Ed Dien, S.Kom, M.T.',
              '12-12-2023',
              'Disetujui',
            ),
            const SizedBox(
              height: 14,
            ),
            logBimbinganItem(
              context,
              'Diskusi Scope Aplikasi SIM-TA',
              'Habibie Ed Dien, S.Kom, M.T.',
              '12-12-2023',
              'Menunggu Persetujuan',
            ),
            const SizedBox(
              height: 14,
            ),
            logBimbinganItem(
              context,
              'Diskusi Scope Aplikasi SIM-TA',
              'Habibie Ed Dien, S.Kom, M.T.',
              '12-12-2023',
              'Ditolak',
            ),
            const SizedBox(
              height: 14,
            ),
            logBimbinganItem(
              context,
              'Diskusi Scope Aplikasi SIM-TA',
              'Habibie Ed Dien, S.Kom, M.T.',
              '12-12-2023',
              'Disetujui',
            ),
            const SizedBox(
              height: 14,
            ),
            logBimbinganItem(
              context,
              'Diskusi Scope Aplikasi SIM-TA',
              'Habibie Ed Dien, S.Kom, M.T.',
              '12-12-2023',
              'Disetujui',
            ),
            const SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
