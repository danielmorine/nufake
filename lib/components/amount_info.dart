import 'package:flutter/material.dart';

class AmountInfo extends StatelessWidget {
  final String amount;
  const AmountInfo({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      amount,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
