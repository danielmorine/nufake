import 'package:flutter/material.dart';
import 'package:nufake/theme/app_colors.dart';

class AccountInfoServiceOptions extends StatelessWidget {
  const AccountInfoServiceOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    _ServiceOptionContent(
                      description: 'Área Pix',
                      icon: Icons.pix_outlined,
                    ),
                    _ServiceOptionContent(
                      description: 'Pagar',
                      icon: Icons.money_outlined,
                    ),
                    _ServiceOptionContent(
                      description: 'Transferir',
                      icon: Icons.send,
                    ),
                    _ServiceOptionContent(
                      description: 'Recarga de celular',
                      icon: Icons.phone_android_rounded,
                    ),
                    _ServiceOptionContent(
                      description: 'Cobrar',
                      icon: Icons.person_add_outlined,
                    ),
                    _ServiceOptionContent(
                      description: 'Doação',
                      icon: Icons.monitor_heart_outlined,
                    ),
                    _ServiceOptionContent(
                      description: 'Transferir Internac.',
                      icon: Icons.height_sharp,
                    ),
                    _ServiceOptionContent(
                      description: 'Investir',
                      icon: Icons.auto_graph,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ServiceOptionContent extends StatelessWidget {
  final String description;
  final IconData icon;

  const _ServiceOptionContent({
    Key? key,
    required this.description,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.containerColor,
                          ),
                          child: Icon(icon),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                    child: Center(
                      child: Text(
                        description,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
