import 'package:flutter/material.dart';
import 'package:nufake/components/amount_info.dart';
import 'package:nufake/components/short_direction.dart';

import '../../box_card.dart';
import 'account_info_service_options.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ShortDirection(
            title: 'Conta',
            showButton: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: AmountInfo(amount: 'R\$ 0,00'),
          ),
          AccountInfoServiceOptions(),
          BoxCard(
            widget: _MyCardContent(
              padding: EdgeInsets.all(16.0),
              widget: _MyCards(),
            ),
          ),
          _ListViewContent(),
        ],
      ),
    );
  }
}

class _MyCards extends StatelessWidget {
  const _MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.credit_card),
            ),
            Text(
              'Meus cartões',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}

class _MyCardContent extends StatelessWidget {
  final Widget widget;
  final EdgeInsetsGeometry padding;

  const _MyCardContent({Key? key, required this.widget, required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [widget],
      ),
    );
  }
}

class _MyMkt1 extends StatelessWidget {
  const _MyMkt1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: BoxCard(
          widget: _MyCardContent(
            padding: EdgeInsets.only(
                top: 20.0, left: 20.0, bottom: 20.0, right: 40.0),
            widget: Text.rich(
              TextSpan(
                text: 'Agora seus ',
                style: TextStyle(color: Colors.black, fontSize: 14),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'filhos menores de idade',
                      style: TextStyle(color: Colors.purple, fontSize: 14)),
                  TextSpan(
                      text: 'podem ter uma conta d..',
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyMkt2 extends StatelessWidget {
  const _MyMkt2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: BoxCard(
          widget: _MyCardContent(
            padding: EdgeInsets.only(
                top: 20.0, left: 20.0, bottom: 20.0, right: 40.0),
            widget: Text(
              'Concorra a prêmio de até R\$ 50mil com NuMockFlutter ....',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyMkt3 extends StatelessWidget {
  const _MyMkt3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: BoxCard(
          widget: _MyCardContent(
            padding: EdgeInsets.only(
                top: 20.0, left: 20.0, bottom: 20.0, right: 40.0),
            widget: Text(
              'Convide seus amigos para NuMockFlutter....',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ListViewContent extends StatelessWidget {
  const _ListViewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: _MyMkt1(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: _MyMkt2(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: _MyMkt3(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
