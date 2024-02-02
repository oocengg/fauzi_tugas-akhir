import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';
import 'package:mobile_app_simta/core/widgets/custom_text_form_field.dart';

class AddLogBimbinganScreen extends StatefulWidget {
  const AddLogBimbinganScreen({super.key});

  @override
  State<AddLogBimbinganScreen> createState() => _AddLogBimbinganScreenState();
}

class _AddLogBimbinganScreenState extends State<AddLogBimbinganScreen> {
  final items = ['One', 'Two', 'Three', 'Four'];
  String selectedValue = 'Four';
  String ssss = 'Four';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                    },
                    icon: const Icon(
                      FontAwesomeIcons.x,
                      size: 16,
                    ),
                  ),
                ],
              ),
              const Divider(),
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.neutral50,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: DropdownButton<String>(
                  value: selectedValue,
                  onChanged: (String? newValue) =>
                      setState(() => selectedValue = newValue ?? ''),
                  items: items
                      .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                      .toList(),
                  icon: const Icon(FontAwesomeIcons.chevronDown),
                  iconSize: 20,
                  isExpanded: true,
                  underline: const SizedBox(),
                ),
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
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Date',
                            style: TextStyle(
                              fontSize: AppFontSize.text,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
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
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: AppColors.neutral50,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: DropdownButton<String>(
                        value: selectedValue,
                        onChanged: (String? newValue) =>
                            setState(() => selectedValue = newValue ?? ''),
                        items: items
                            .map<DropdownMenuItem<String>>(
                                (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    ))
                            .toList(),
                        icon: const Icon(FontAwesomeIcons.chevronDown),
                        iconSize: 20,
                        isExpanded: true,
                        underline: const SizedBox(),
                      ),
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
                validator: (value) => validateSementara(value, context),
                controller: topicController,
                enable: true,
                hint: "Tambahkan topik bimbingan anda",
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
                validator: (value) => validateSementara(value, context),
                controller: topicController,
                enable: true,
                maxLines: 5,
                hint: "Tambahkan deskripsi bimbingan anda",
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
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
}

TextEditingController topicController = TextEditingController();

// Fungsi fungsi untuk validasi inputan
String? validateSementara(String? value, BuildContext context) {
  if (value == null || value.isEmpty) {
    return "Alamat tidak boleh kosong";
  }

  return null; // validasi berhasil
}
