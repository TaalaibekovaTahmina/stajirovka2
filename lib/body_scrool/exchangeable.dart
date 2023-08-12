import 'package:flutter/material.dart';
import 'package:stajirovka2/constands/app_colors.dart';

class Exchangeable extends StatelessWidget {
  const Exchangeable({
    super.key,
    required this.image,
    required this.text,
    required this.color,
    required this.text1,
    required this.text2,
  });

  final dynamic image;
  final String text;
  final String text1;
  final String text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            child: Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              height: 145,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 180),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      text1,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(text2),
                        const Icon(
                          Icons.star,
                          color: AppColors.amber,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.violet,
                      ),
                      child: const Text(
                        'View Profile',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 0,
            child: image,
          ),
        ],
      ),
    );
  }
}
