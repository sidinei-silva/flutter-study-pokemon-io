import 'package:flutter/material.dart';

import 'package:pokemons_io/theme/app_theme.dart';

class SearchInputText extends StatelessWidget {
  final Function(String value) onChange;
  final String hintText;
  final TextEditingController controller;

  const SearchInputText({
    Key? key,
    required this.onChange,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        onChanged: onChange,
        style: AppTheme.textStyles.searchText,
        cursorColor: AppTheme.colors.appBar,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppTheme.colors.searchInputBackground,
          contentPadding: const EdgeInsets.only(left: 20),
          hintText: hintText,
          hintStyle: AppTheme.textStyles.searchHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
