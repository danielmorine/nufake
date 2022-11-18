import 'package:flutter/material.dart';
import 'package:nufake/components/amount_info.dart';
import 'package:nufake/components/box_card.dart';
import 'package:nufake/components/short_direction.dart';

class CreditCardInfo extends StatelessWidget {
  const CreditCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          ShortDirection(
            title: 'Cartão de crédito',
            showButton: true,
          ),
          _CreditCardInfoContent(),
          _PaymentPartialContent(),
        ],
      ),
    );
  }
}

class _CreditCardInfoContent extends StatelessWidget {
  const _CreditCardInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text('Fatura atual'),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: AmountInfo(amount: 'R\$ 0,00'),
            ),
          ],
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text('Limite disponível de R\$ 65.302,92'),
            ),
          ],
        )
      ],
    );
  }
}

class _PaymentPartialContent extends StatelessWidget {
  const _PaymentPartialContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: BoxCard(widget: _PaymentPartialInformationContent()),
        ),
      ],
    );
  }
}

class _PaymentPartialInformationContent extends StatelessWidget {
  const _PaymentPartialInformationContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Parcelar compras',
              style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}
