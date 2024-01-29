import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final String? label;
  final bool enable;
  final String? hint;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController controller;
  final IconButton? suffixIcon;
  final int? maxLength;
  final TextInputAction textInputAction;
  final Function(String?)? onChanged;
  final String? helperText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Widget? icon;
  final bool? isError;
  final FocusNode? focus;

  const CustomTextFormField({
    super.key,
    required this.textInputAction,
    this.label,
    this.hint,
    required this.validator,
    this.obscureText = false,
    required this.controller,
    this.suffixIcon,
    this.maxLength,
    this.onChanged,
    this.helperText,
    this.keyboardType,
    this.maxLines,
    this.icon,
    this.isError = false,
    required this.enable,
    this.focus,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enable,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      style: const TextStyle(
        color: Colors.black,
      ),
      focusNode: widget.focus,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        border: Theme.of(context).inputDecorationTheme.border,
        filled: true,
        fillColor: widget.enable ? Colors.white : AppColors.neutral50,
        errorStyle: const TextStyle(
          color: AppColors.error500,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.error500,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.error500,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.neutral300,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.neutral300,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.primary500,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        hintText: widget.hint,
        hintStyle: const TextStyle(
          fontSize: AppFontSize.caption,
          color: AppColors.neutral600,
        ),
      ),
      validator: (value) => widget.validator!(value),
    );
  }
}
