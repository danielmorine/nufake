import 'package:flutter/material.dart';
import 'package:nufake/theme/app_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primaryColor),
      height: 135,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _FirstLineLeftSideContent(),
                _FirstLineRightSideContent(),
              ],
            ),
            _HelloUserContent()
          ],
        ),
      ),
    );
  }
}

class _FirstLineLeftSideContent extends StatelessWidget {
  const _FirstLineLeftSideContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.add_photo_alternate_outlined,
          color: AppColors.iconHeaderColor,
        )
      ],
    );
  }
}

class _FirstLineRightSideContent extends StatelessWidget {
  const _FirstLineRightSideContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.remove_red_eye_outlined,
            color: AppColors.iconHeaderColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.help_outline,
            color: AppColors.iconHeaderColor,
          ),
        ),
        Icon(
          Icons.person_add_alt_outlined,
          color: AppColors.iconHeaderColor,
        )
      ],
    );
  }
}

class _HelloUserContent extends StatelessWidget {
  const _HelloUserContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        'Olá, Daniel',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
