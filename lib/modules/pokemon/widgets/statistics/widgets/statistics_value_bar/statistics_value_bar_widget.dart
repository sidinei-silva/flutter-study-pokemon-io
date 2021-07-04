import 'package:flutter/material.dart';

import 'package:pokemons_io/theme/app_theme.dart';

class StatisticsValueBarWidget extends StatefulWidget {
  final Color color;
  final double value;

  const StatisticsValueBarWidget({
    Key? key,
    required this.color,
    required this.value,
  }) : super(key: key);

  @override
  _StatisticsValueBarWidgetState createState() =>
      _StatisticsValueBarWidgetState();
}

class _StatisticsValueBarWidgetState extends State<StatisticsValueBarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1, milliseconds: 500),
    );
    _animation =
        Tween<double>(begin: 0.0, end: widget.value).animate(_controller);
    _controller.forward();
  }

  @override
  void initState() {
    initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _) => Row(
        children: [
          Text(
            "${_animation.value.toInt().toString().padLeft(3, '0')}",
            style: AppTheme.textStyles.valueStatistics,
          ),
          SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                child: LinearProgressIndicator(
                  value: _animation.value / 300,
                  backgroundColor: widget.color.withOpacity(0.2),
                  valueColor: AlwaysStoppedAnimation<Color>(widget.color),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
