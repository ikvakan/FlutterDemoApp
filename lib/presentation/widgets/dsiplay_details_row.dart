
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/constants/text_styles.dart';
import 'package:flutter_onboarding/constants/ui_constants.dart';



class DisplayDetailsRow extends StatelessWidget {
  const DisplayDetailsRow({
    super.key,
    required this.label,
    required this.text,
  });

  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(UiConstants.marginDefault),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyles.titleStyle,
          ),
          const SizedBox(height: UiConstants.sizedBoxDefaultHeight),
          Text(
            text,
            style: TextStyles.subtitleStyle,
          ),
        ],
      ),
    );
  }
}
