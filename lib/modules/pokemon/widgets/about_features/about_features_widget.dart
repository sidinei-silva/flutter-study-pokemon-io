import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class AboutFeaturesWidget extends StatelessWidget {
  final double weight;
  final double height;
  final List<String> moves;

  const AboutFeaturesWidget({
    Key? key,
    required this.weight,
    required this.height,
    required this.moves,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    AppImages.iconBalance,
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${weight / 10} kg",
                    style: AppTheme.textStyles.aboutItemTitle,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Weight",
                style: AppTheme.textStyles.aboutItemSubtitle,
              ),
            ],
          ),
          Container(
            width: 1,
            height: 48,
            color: AppTheme.colors.divider,
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    AppImages.iconRuler,
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${height / 10} m",
                    style: AppTheme.textStyles.aboutItemTitle,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Height",
                style: AppTheme.textStyles.aboutItemSubtitle,
              ),
            ],
          ),
          Container(
            width: 1,
            height: 48,
            color: AppTheme.colors.divider,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...moves.map(
                    (move) => Text(
                      toBeginningOfSentenceCase(move)!,
                      style: AppTheme.textStyles.aboutItemTitle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Moves",
                style: AppTheme.textStyles.aboutItemSubtitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
