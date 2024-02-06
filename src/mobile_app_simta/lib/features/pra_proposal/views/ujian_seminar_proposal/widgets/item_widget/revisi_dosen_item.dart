import 'package:flutter/material.dart';
import 'package:mobile_app_simta/core/constant/colors.dart';
import 'package:mobile_app_simta/core/constant/font_size.dart';

class RevisiDosenItem extends StatefulWidget {
  final String title;
  final String data;
  const RevisiDosenItem({super.key, required this.title, required this.data});

  @override
  State<RevisiDosenItem> createState() => _RevisiDosenItemState();
}

class _RevisiDosenItemState extends State<RevisiDosenItem> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.neutral50,
        ),
        child: ExpansionTile(
          title: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.text,
              overflow: isOpen ? null : TextOverflow.ellipsis,
            ),
            maxLines: isOpen ? null : 1,
          ),
          onExpansionChanged: (value) {
            setState(() {
              isOpen = !isOpen;
            });
          },
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.data,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppFontSize.caption,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
