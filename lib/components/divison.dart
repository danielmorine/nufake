import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class Division extends StatelessWidget {
  const Division({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 10.0),
      child: Container(
        height: 2,
        decoration:
            BoxDecoration(border: Border.all(color: AppColors.containerColor)),
      ),
    );
  }
}
