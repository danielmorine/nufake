import 'package:flutter/material.dart';

import '../components/divison.dart';
import '../components/header.dart';
import '../components/sections/home/account_info.dart';
import '../components/sections/home/credit_card_info.dart';
import '../components/sections/home/discover_info.dart';
import '../components/sections/home/loan_information.dart';
import '../components/sections/home/view_information.dart';
import '../theme/app_colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Header(),
            AccountInfo(),
            Division(),
            CreditCardInfo(),
            Division(),
            ViewInformation(),
            Division(),
            LoanInformation(),
            Division(),
            DiscoverInfo()
          ],
        ),
      ),
      bottomSheet: _MenuContent(),
    );
  }
}

class _IconContent extends StatelessWidget {
  final IconData icon;
  const _IconContent({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Icon(
        icon,
        color: AppColors.textMediumColor,
      ),
    );
  }
}

class _MenuContent extends StatelessWidget {
  const _MenuContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        height: 2,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.containerColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _IconContent(icon: Icons.currency_exchange_outlined),
                _IconContent(icon: Icons.attach_money),
                _IconContent(icon: Icons.shopping_bag_outlined),
                _IconContent(icon: Icons.sports_soccer_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
