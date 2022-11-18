import 'package:flutter/material.dart';
import 'package:nufake/components/short_direction.dart';

class LoanInformation extends StatelessWidget {
  const LoanInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
      child: Column(
        children: [
          ShortDirection(
            title: 'Empréstimo',
            showButton: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              children: const [
                SizedBox(
                  width: 300,
                  child: Text(
                      'Crie um aviso para saber quando um empréstimo ficar disponível'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
