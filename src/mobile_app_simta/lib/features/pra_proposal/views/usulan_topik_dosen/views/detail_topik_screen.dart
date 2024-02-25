import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

class DetailTopikScreen extends StatelessWidget {
  final String title;
  final String dosen;
  final String type;
  final String claim;
  final List<String> scope;
  final String description;
  const DetailTopikScreen({
    super.key,
    required this.title,
    required this.dosen,
    required this.type,
    required this.claim,
    required this.description,
    required this.scope,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Detail Topik',
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
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: claim == 'Sudah Diambil'
                  ? AppColors.error500
                  : claim == 'Dipilih'
                      ? AppColors.warning500
                      : AppColors.success500,
            ),
            child: Text(
              claim,
              style: const TextStyle(
                fontSize: AppFontSize.text,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
        backgroundColor: AppColors.primary500,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: AppFontSize.heading5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  dosen,
                  style: const TextStyle(
                    fontSize: AppFontSize.text,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      'Jenis Topik :',
                      style: TextStyle(
                        fontSize: AppFontSize.text,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: type == 'Pengembangan'
                              ? AppColors.blue500
                              : AppColors.neutral500,
                        ),
                        child: Text(
                          type,
                          style: const TextStyle(
                            fontSize: AppFontSize.text,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Deskripsi Topik :',
                  style: TextStyle(
                    fontSize: AppFontSize.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: AppFontSize.text,
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 24),
                color: AppColors.white,
                child: Column(
                  children: [
                    CheckboxListTile(
                      title: const Text(
                        "Apakah anda benar-benar merasa yakin dan sanggup untuk mengerjakan topik skripsi ini?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.caption,
                        ),
                      ),
                      fillColor:
                          const MaterialStatePropertyAll(AppColors.primary500),
                      value: true,
                      onChanged: (value) {},
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          AppColors.primary500,
                        ),
                        maximumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.of(context).size.width, 40),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.of(context).size.width, 40),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Ambil Topik',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppFontSize.text,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
