import 'package:flutter/material.dart';
import 'package:pokemons_io/modules/pokemon/widgets/statistics/widgets/statistics_value_bar/statistics_value_bar_widget.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class StatisticsWidget extends StatelessWidget {
  final Color color;

  const StatisticsWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hp'.toUpperCase(),
                style: AppTheme.textStyles.labelStatistics(color: color),
              ),
              Text(
                'atk'.toUpperCase(),
                style: AppTheme.textStyles.labelStatistics(color: color),
              ),
              Text(
                'def'.toUpperCase(),
                style: AppTheme.textStyles.labelStatistics(color: color),
              ),
              Text(
                'satk'.toUpperCase(),
                style: AppTheme.textStyles.labelStatistics(color: color),
              ),
              Text(
                'sdef'.toUpperCase(),
                style: AppTheme.textStyles.labelStatistics(color: color),
              ),
              Text(
                'spd'.toUpperCase(),
                style: AppTheme.textStyles.labelStatistics(color: color),
              ),
            ],
          ),
          Column(
            children: [
              ...List.generate(
                6,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    height: 16,
                    width: 1,
                    color: AppTheme.colors.divider,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                StatisticsValueBarWidget(color: color, value: 45),
                StatisticsValueBarWidget(color: color, value: 49),
                StatisticsValueBarWidget(color: color, value: 49),
                StatisticsValueBarWidget(color: color, value: 65),
                StatisticsValueBarWidget(color: color, value: 65),
                StatisticsValueBarWidget(color: color, value: 45),
              ],
            ),
          )
        ],
      ),
    );
  }
}
