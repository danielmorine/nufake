import 'package:flutter/material.dart';

class ShortDirection extends StatelessWidget {
  final String title;
  final bool showButton;

  const ShortDirection(
      {Key? key, required this.title, required this.showButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ShortNameContent(name: title),
            if (showButton) _ShortIconContent(),
          ],
        ),
      ],
    );
  }
}

class _ShortNameContent extends StatelessWidget {
  final String name;
  const _ShortNameContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}

class _ShortIconContent extends StatelessWidget {
  const _ShortIconContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Icon(Icons.chevron_right_rounded),
        ),
      ],
    );
  }
}
