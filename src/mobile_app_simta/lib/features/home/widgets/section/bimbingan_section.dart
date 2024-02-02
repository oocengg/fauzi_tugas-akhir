import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/home/widgets/item_widget/bimbingan_item.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/views/log_bimbingan_screen.dart';

class BimbinganSection extends StatelessWidget {
  const BimbinganSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Log Bimbingan',
                style: TextStyle(
                  fontSize: AppFontSize.heading4,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  color: AppColors.black,
                ),
                maxLines: 1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogBimbinganScreen(),
                    ),
                  );
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
          bimbinganItem(
            context,
            'Diskusi Scope Aplikasi SIM-TA',
            'Habibie Ed Dien, S.Kom, M.T.',
            '12-12-2023',
            'Disetujui',
          ),
          const SizedBox(
            height: 14,
          ),
          bimbinganItem(
            context,
            'Diskusi Scope Aplikasi SIM-TA',
            'Habibie Ed Dien, S.Kom, M.T.',
            '12-12-2023',
            'Ditolak',
          ),
          const SizedBox(
            height: 14,
          ),
          bimbinganItem(
            context,
            'Diskusi Scope Aplikasi SIM-TA',
            'Habibie Ed Dien, S.Kom, M.T.',
            '12-12-2023',
            'Menunggu Persetujuan',
          ),
        ],
      ),
    );
  }
}
