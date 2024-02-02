import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

class InfoPendaftaranSection extends StatelessWidget {
  const InfoPendaftaranSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Item
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '26',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.heading1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nov',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.heading5,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '2023',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.text,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 5,
                  width: 20,
                  margin: const EdgeInsets.only(right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.black,
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '02',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.heading1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Des',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.heading5,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '2023',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: AppFontSize.text,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),

          // Registrasi Info Item
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.error500,
            ),
            child: const Center(
              child: Text(
                'Registrasi Seminar Proposal telah ditutup',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.text,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Syarat Item
          const Text(
            'Syarat min. bimbingan :',
            style: TextStyle(
              fontSize: AppFontSize.text,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            '3× bimbingan yang sudah Disetujui oleh dosen Pembimbing Utama',
            style: TextStyle(
              fontSize: AppFontSize.text,
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Deskripsi Item
          const Text(
            'Deskripsi :',
            style: TextStyle(
              fontSize: AppFontSize.text,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Pembukaan pendaftaran gelombang 1 seminar proposal Jurusan Teknologi Informasi',
            style: TextStyle(
              fontSize: AppFontSize.text,
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Keterangan Item
          const Text(
            'Keterangan :',
            style: TextStyle(
              fontSize: AppFontSize.text,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  height: 125,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.success50,
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Anda ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: AppFontSize.text,
                              color: AppColors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: 'eligible',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppFontSize.text,
                              color: AppColors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: ' untuk mendaftar pada Tahap ini.',
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
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Container(
                  height: 125,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.blue50,
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Anda ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: AppFontSize.text,
                              color: AppColors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: 'sudah terdaftar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppFontSize.text,
                              color: AppColors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: ' pada Tahap ini.',
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
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
