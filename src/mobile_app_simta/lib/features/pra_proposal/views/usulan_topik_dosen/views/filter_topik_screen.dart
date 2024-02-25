import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/features/pra_proposal/views/usulan_topik_dosen/provider/usulan_topik_dosen_provider.dart';
import 'package:provider/provider.dart';

class FilterTopikScreen extends StatefulWidget {
  const FilterTopikScreen({super.key});

  @override
  State<FilterTopikScreen> createState() => _FilterTopikScreenState();
}

class _FilterTopikScreenState extends State<FilterTopikScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<UsulanTopikDosenProvider>(
        builder: (context, usulanTopikDosenProvider, _) {
          if (usulanTopikDosenProvider.applyFilterState == AppState.loading) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return Container(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Filter Topik',
                          style: TextStyle(
                            fontSize: AppFontSize.heading5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            usulanTopikDosenProvider.clearDataBimbingan();
                          },
                          icon: const Icon(
                            FontAwesomeIcons.x,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.neutral100,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Dosen Pengusul',
                      style: TextStyle(
                        fontSize: AppFontSize.text,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    DropdownButtonFormField<String>(
                      value: usulanTopikDosenProvider.dosenPengusul,
                      onChanged: (String? newValue) => setState(() =>
                          usulanTopikDosenProvider.dosenPengusul =
                              newValue ?? ''),
                      items: usulanTopikDosenProvider.listDosenPengusul
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                          .toList(),
                      icon: const Icon(FontAwesomeIcons.chevronDown),
                      iconSize: 20,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                        fillColor: AppColors.neutral50,
                        filled: true,
                      ),
                      isExpanded: true,
                      hint: const Text('Pilih Dosen'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Jenis Topik',
                                style: TextStyle(
                                  fontSize: AppFontSize.text,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              DropdownButtonFormField<String>(
                                value: usulanTopikDosenProvider.jenisTopik,
                                onChanged: (String? newValue) => setState(() =>
                                    usulanTopikDosenProvider.jenisTopik =
                                        newValue ?? ''),
                                items: usulanTopikDosenProvider.listJenisTopik
                                    .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ))
                                    .toList(),
                                icon: const Icon(FontAwesomeIcons.chevronDown),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  contentPadding: const EdgeInsets.all(16),
                                  fillColor: AppColors.neutral50,
                                  filled: true,
                                ),
                                iconSize: 20,
                                isExpanded: true,
                                hint: const Text('Pilih Jenis'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ketersediaan',
                                style: TextStyle(
                                  fontSize: AppFontSize.text,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              DropdownButtonFormField<String>(
                                value: usulanTopikDosenProvider.ketersediaan,
                                onChanged: (String? newValue) => setState(() =>
                                    usulanTopikDosenProvider.ketersediaan =
                                        newValue ?? ''),
                                items: usulanTopikDosenProvider.listTersedia
                                    .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ))
                                    .toList(),
                                icon: const Icon(FontAwesomeIcons.chevronDown),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  contentPadding: const EdgeInsets.all(16),
                                  fillColor: AppColors.neutral50,
                                  filled: true,
                                ),
                                iconSize: 20,
                                isExpanded: true,
                                hint: const Text('Pilih Ketersediaan'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        usulanTopikDosenProvider.applyFilter(context);
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.primary500)),
                      child: const Text(
                        'Terapkan',
                        style: TextStyle(
                          fontSize: AppFontSize.text,
                          fontWeight: FontWeight.normal,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
