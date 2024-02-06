import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

class DetailLogBimbinganScreen extends StatelessWidget {
  const DetailLogBimbinganScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Detail Log Bimbingan',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.primary500,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.success50,
              ),
              child: const Center(
                child: Text(
                  'Log Bimbingan telah disetujui oleh dosen pembimbing.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.text,
                    color: AppColors.success500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'DIV Teknik Informatika',
                    style: TextStyle(
                      fontSize: AppFontSize.text,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.aqua500,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Text(
                    'Offline',
                    style: TextStyle(
                      fontSize: AppFontSize.text,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Dosen Pembimbing : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSize.text,
                      color: AppColors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: 'Habibie Ed Dien, S.Kom., M.T.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppFontSize.text,
                      color: AppColors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Waktu : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSize.text,
                      color: AppColors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: '2023-11-17 13:00:00',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppFontSize.text,
                      color: AppColors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              color: AppColors.neutral100,
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Activity Diagram & Bab 3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.heading4,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Diskusi mengenai activity diagram yang telah dibuat, poin poin yang harus dijelaskan dalam Bab 3, dan penjelasannya.\n\nCatatan :\n- Revisi Activity Diagram\n- Mulai mengisi Bab 3\n- Membuat Wireframe minimal 5 halaman',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: AppFontSize.text,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
