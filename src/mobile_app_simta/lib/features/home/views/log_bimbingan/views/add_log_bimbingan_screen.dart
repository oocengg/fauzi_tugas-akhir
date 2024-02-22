import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/extensions/date_ext.dart';
import 'package:mobile_app_simta/core/state/finite_state.dart';
import 'package:mobile_app_simta/core/widgets/custom_text_form_field.dart';
import 'package:mobile_app_simta/features/home/views/log_bimbingan/provider/log_bimbingan_provider.dart';
import 'package:provider/provider.dart';

class AddLogBimbinganScreen extends StatefulWidget {
  const AddLogBimbinganScreen({super.key});

  @override
  State<AddLogBimbinganScreen> createState() => _AddLogBimbinganScreenState();
}

class _AddLogBimbinganScreenState extends State<AddLogBimbinganScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<LogBimbinganProvider>(
        builder: (context, logBimbinganProvider, _) {
          if (logBimbinganProvider.addLogBimbinganState == AppState.loading) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return Form(
              key: logBimbinganProvider.logBimbinganFormKey,
              child: Container(
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
                            'Tambah Bimbingan',
                            style: TextStyle(
                              fontSize: AppFontSize.heading5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                              logBimbinganProvider.clearDataBimbingan();
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
                        'Dosen Pembimbing',
                        style: TextStyle(
                          fontSize: AppFontSize.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DropdownButtonFormField<String>(
                        value: logBimbinganProvider.dosenPembimbing,
                        onChanged: (String? newValue) => setState(() =>
                            logBimbinganProvider.dosenPembimbing =
                                newValue ?? ''),
                        items: logBimbinganProvider.listDosenPembimbing
                            .map<DropdownMenuItem<String>>(
                                (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    ))
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
                        validator: (value) =>
                            value == null ? 'Dosen tidak boleh kosong.' : null,
                        isExpanded: true,
                        hint: const Text('Pilih Dosen'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Tanggal',
                        style: TextStyle(
                          fontSize: AppFontSize.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: AppColors.neutral50,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      formatDateddMMMMyyyy(
                                        logBimbinganProvider.tanggalBimbingan
                                            .toString(),
                                      ),
                                      style: const TextStyle(
                                        fontSize: AppFontSize.text,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      logBimbinganProvider.selectDate(context);
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.calendar,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              value: logBimbinganProvider.mediaBimbingan,
                              onChanged: (String? newValue) => setState(() =>
                                  logBimbinganProvider.mediaBimbingan =
                                      newValue ?? ''),
                              items: logBimbinganProvider.listMediaBimbingan
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
                              validator: (value) => value == null
                                  ? 'Metode tidak boleh kosong.'
                                  : null,
                              iconSize: 20,
                              isExpanded: true,
                              hint: const Text('Pilih Metode'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Topik Bimbingan',
                        style: TextStyle(
                          fontSize: AppFontSize.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomTextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (value) => logBimbinganProvider
                            .validateTopikBimbingan(value, context),
                        controller:
                            logBimbinganProvider.topikBimbinganController,
                        enable: true,
                        hint: 'Tambahkan topik bimbingan anda',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Deskripsi Bimbingan',
                        style: TextStyle(
                          fontSize: AppFontSize.text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomTextFormField(
                        textInputAction: TextInputAction.done,
                        validator: (value) => logBimbinganProvider
                            .validateDeskripsiBimbingan(value, context),
                        controller:
                            logBimbinganProvider.deskripsiBimbinganController,
                        enable: true,
                        maxLines: 5,
                        hint: "Tambahkan deskripsi bimbingan anda",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (logBimbinganProvider
                              .logBimbinganFormKey.currentState!
                              .validate()) {
                            logBimbinganProvider.pushLogBimbingan(context);
                          }
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.primary500)),
                        child: const Text(
                          'Simpan',
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
              ),
            );
          }
        },
      ),
    );
  }
}
