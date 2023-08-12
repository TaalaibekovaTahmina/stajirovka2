import 'package:flutter/material.dart';
import 'package:stajirovka2/constands/app_colors.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    required this.image,
    required this.text,
    super.key,
  });

  final dynamic image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(11),
          color: AppColors.scroll1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: image,
          ),
        ),
        Text(text)
      ],
    );
  }
}
