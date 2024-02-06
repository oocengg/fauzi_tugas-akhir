import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/file_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/revisi_dosen_item.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/ujian_seminar_proposal/widgets/item_widget/warning_lengkapi_data_item.dart';

class UjianSeminarProposalScreen extends StatelessWidget {
  const UjianSeminarProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Ujian Seminar Proposal',
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
      body: ListView(
        children: [
          // ID Section
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 16,
              left: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ID : P1-0075',
                  style: TextStyle(
                      fontSize: AppFontSize.heading4,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.blue500),
                  child: const Text(
                    'Pengembangan',
                    style: TextStyle(
                      fontSize: AppFontSize.text,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Title Section
          const Padding(
            padding: EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            child: Text(
              'Analisis Penggunaan Fitur Notifikasi dalam Aplikasi Mobile Berbasis Flutter untuk Meningkatkan Efisiensi Manajemen Tugas Akhir',
              style: TextStyle(
                fontSize: AppFontSize.heading5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Bidang Section
          SizedBox(
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
                child: const Text(
                  'Mobile Application',
                  style: TextStyle(
                    fontSize: AppFontSize.text,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 5,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: AppColors.neutral100,
          ),
          const SizedBox(
            height: 16,
          ),

          // Profile Section
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(32),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.jpeg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muh. Fauzi Ramadhan Nugraha',
                            style: TextStyle(
                              fontSize: AppFontSize.heading5,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(2041720022)',
                            style: TextStyle(
                              fontSize: AppFontSize.text,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                              color: AppColors.black,
                            ),
                            maxLines: 1,
                          ),
                          Text(
                            'DIV Teknik Informatika',
                            style: TextStyle(
                              fontSize: AppFontSize.text,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis,
                              color: AppColors.black,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
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
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Waktu Section
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
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
                  const Text(
                    'Waktu Pelaksanaan :',
                    style: TextStyle(
                      fontSize: AppFontSize.text,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '45',
                              style: TextStyle(
                                fontSize: AppFontSize.heading1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Menit',
                              style: TextStyle(
                                fontSize: AppFontSize.heading4,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Senin, 04 Desember 2023',
                              style: TextStyle(
                                fontSize: AppFontSize.text,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.neutral300,
                        ),
                      ),
                      const Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mulai',
                              style: TextStyle(
                                fontSize: AppFontSize.heading5,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              '09:00 WIB',
                              style: TextStyle(
                                fontSize: AppFontSize.heading4,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Selesai',
                              style: TextStyle(
                                fontSize: AppFontSize.heading5,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              '09:00 WIB',
                              style: TextStyle(
                                fontSize: AppFontSize.heading4,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.doorClosed,
                        color: AppColors.primary500,
                        size: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Ruang Arsip',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.text,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.building,
                        color: AppColors.primary500,
                        size: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Gd. Sipil & Informatika Lt.6 T',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: AppFontSize.text,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: AppColors.neutral100,
          ),
          const SizedBox(
            height: 16,
          ),

          // Berkas Sidang Section
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Berkas Proposal :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.heading5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                warningLengkapiDataItem(
                  'Lengkapi data proposal melalui website SIM-TA',
                ),
                const SizedBox(
                  height: 16,
                ),
                fileItem(
                  'File Laporan Proposal',
                  'laporan_9042510f658c44faaf09c5077395a3ea.pdf',
                ),
                const SizedBox(
                  height: 16,
                ),
                fileItem(
                  'File Presentasi Proposal',
                  'laporan_9042510f658c44faaf09c5077395a3ea.pdf',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: AppColors.neutral100,
          ),
          const SizedBox(
            height: 16,
          ),

          // Jika Belum Sempro, maka Column dibawah Tidak akan ditampilkan // ----------------------------------------------------

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hasil Sidang Section
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hasil Seminar Proposal :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSize.heading5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: AppColors.success500,
                      ),
                      child: const Center(
                        child: Text(
                          'Proposal Telah Diseminarkan',
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
                    fileItem(
                      'File Berita Acara Seminar Proposal',
                      'laporan_9042510f658c44faaf09c5077395a3ea.pdf',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: AppColors.neutral100,
              ),
              const SizedBox(
                height: 16,
              ),

              // Revisi Proposal Section
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Revisi Proposal :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSize.heading5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    warningLengkapiDataItem(
                      'Lengkapi data revisi proposal melalui website SIM-TA',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const RevisiDosenItem(
                        title: 'Yoppy Yunhasnawa, S.ST., M.Sc.',
                        data:
                            '1. Harap dipastikan dan dituliskan di proposal bahwa ada fitur yang mengingatkan dosen moderator + pembahas + mahasiswa ketika ada perubahan jadwal.\n2. Fix-kan metode deteksi updatenya seperti apa, dan tuliskan di proposal, tambahkan penjelasan baik berupa tulisan maupun diagram.\n3.Perbaiki penulisan proposal sesuai dengan metodologi yang digunakan.'),
                    const SizedBox(
                      height: 16,
                    ),
                    const RevisiDosenItem(
                        title: 'Moch Zawaruddin Abdullah, S.ST., M.Kom.',
                        data:
                            '- Deskripsi Metodologi Pengembangan Perangkat Lunak ditaruh di Bab 2.\n- Untuk progres yang sudah dikerjakan dan yang akan dikerjakan sesuai dengan Metodologi Pengembangan PL (bab-bab nya) baru ditaruh di Bab 3.\n- Tambahkan profile mitra.\n- Analisis kebutuhan di Bab 2 setelah profile mitra saja'),
                    const SizedBox(
                      height: 16,
                    ),
                    fileItem(
                      'File Revisi Laporan',
                      'rev-laporan_aad9c09c17b2466fad4dcc4551500188.pdf',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: AppColors.neutral100,
              ),
              const SizedBox(
                height: 16,
              ),

              // Lampiran Final Section
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lampiran Final Laporan Proposal :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSize.heading5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    warningLengkapiDataItem(
                      'Lengkapi data final proposal melalui website SIM-TA',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    fileItem(
                      'Laporan Proposal Final (Laporan + Lembar Pengesahan)',
                      'rev-laporan_aad9c09c17b2466fad4dcc4551500188.pdf',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
