import 'package:flutter/material.dart';
import 'package:nufake/components/box_card.dart';
import 'package:nufake/components/short_direction.dart';
import 'package:nufake/theme/app_colors.dart';

class DiscoverInfo extends StatelessWidget {
  const DiscoverInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 16.0),
          child: ShortDirection(title: 'Descubra mais', showButton: false),
        ),
        SizedBox(
          height: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16.0),
                child: _DiscoverInfoContent(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DiscoverInfoContent extends StatelessWidget {
  const _DiscoverInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: BoxCard(
                widget: _CardBoxContent(
                  uri:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh0s4TQM92CKQWdCJYOx1GzVaMDoAL22tC3A&usqp=CAU',
                  title: 'NuMock Celular Seguro',
                  description:
                      '100% cobertura, 0% estresse. Simule agora mesmo.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: BoxCard(
                widget: _CardBoxContent(
                  uri:
                      'https://soubh.uai.com.br/uploads/post/image/11290/main_FamVeld.CAPA.jpg',
                  title: 'Seguro de vida',
                  description: 'Faça seguro de vida. Simule!',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: BoxCard(
                widget: _CardBoxContent(
                  uri:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS95HmcM8ETgWwjsZGpm4uvkP8TeLCeMgmUNg&usqp=CAU',
                  title: 'Cartão de crédito',
                  description: 'Pague suas contas com cartão de crédito',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: BoxCard(
                widget: _CardBoxContent(
                  uri:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh0s4TQM92CKQWdCJYOx1GzVaMDoAL22tC3A&usqp=CAU',
                  title: 'NuMock Celular Seguro',
                  description:
                      '100% cobertura, 0% estresse. Simule agora mesmo.',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: BoxCard(
                widget: _CardBoxContent(
                  uri:
                      'https://soubh.uai.com.br/uploads/post/image/11290/main_FamVeld.CAPA.jpg',
                  title: 'Seguro de vida',
                  description: 'Faça seguro de vida. Simule!',
                ),
              ),
            ),
            BoxCard(
              widget: _CardBoxContent(
                uri:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS95HmcM8ETgWwjsZGpm4uvkP8TeLCeMgmUNg&usqp=CAU',
                title: 'Cartão de crédito',
                description: 'Pague suas contas com cartão de crédito',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _CardBoxContent extends StatelessWidget {
  final String uri;
  final String title;
  final String description;

  const _CardBoxContent(
      {Key? key,
      required this.uri,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: SizedBox(height: 170, child: Image.network(uri))),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: SizedBox(
              width: 220,
              height: 50,
              child: Text(description),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: _ButtonContent(),
          ),
        ],
      ),
    );
  }
}

class _ButtonContent extends StatelessWidget {
  const _ButtonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Conhecer',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
