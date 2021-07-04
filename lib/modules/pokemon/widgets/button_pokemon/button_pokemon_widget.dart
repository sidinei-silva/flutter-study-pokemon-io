import 'package:flutter/material.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class ButtonPokemonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color color;

  const ButtonPokemonWidget({
    Key? key,
    required this.onTap,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          Size(132, 30),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 35),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
      child: Container(
        child: Text(
          label,
          style: AppTheme.textStyles.labelButtonPokemon,
        ),
      ),
    );
  }
}
