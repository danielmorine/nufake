import 'package:flutter/material.dart';
import 'package:nufake/theme/app_colors.dart';

class BoxCard extends StatelessWidget {
  final Widget? widget;

  const BoxCard({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.containerColor),
      child: widget,
    );
  }
}
