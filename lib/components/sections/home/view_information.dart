import 'package:flutter/material.dart';
import 'package:nufake/components/box_card.dart';
import 'package:nufake/components/short_direction.dart';

class ViewInformation extends StatelessWidget {
  const ViewInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 16.0),
          child: ShortDirection(
            title: 'Acompanhe também',
            showButton: false,
          ),
        ),
        _ViewInformationContent()
      ],
    );
  }
}

class _ViewInformationContent extends StatelessWidget {
  const _ViewInformationContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 20),
      child: Row(
        children: [
          BoxCard(
              widget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.attach_money_rounded),
                Text(
                  'Assistente de pagamentos',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
