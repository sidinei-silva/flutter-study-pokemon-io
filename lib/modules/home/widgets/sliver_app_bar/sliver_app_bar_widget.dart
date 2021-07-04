import 'package:flutter/material.dart';
import 'package:pokemons_io/core/app_images.dart';
import 'package:pokemons_io/modules/home/widgets/button_add/button_add_widget.dart';
import 'package:pokemons_io/shared/widgets/search_input_text/search_input_text.dart';
import 'package:pokemons_io/theme/app_theme.dart';

class SliverAppBarWidget extends StatelessWidget {
  final String userName;
  final String userUrlPhoto;
  final VoidCallback buttonAddOnTap;
  final Function(String value) searchOnChange;

  const SliverAppBarWidget({
    Key? key,
    required this.userName,
    required this.userUrlPhoto,
    required this.buttonAddOnTap,
    required this.searchOnChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditController = new TextEditingController();

    return SliverAppBar(
      backgroundColor: AppTheme.colors.appBar,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: [StretchMode.blurBackground],
        background: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.logo,
              width: 64,
              height: 24,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  userUrlPhoto,
                  height: 56,
                ),
              ),
              title: Text(
                userName,
                style: AppTheme.textStyles.userName,
              ),
              trailing: ButtonAddWidget(
                onTap: buttonAddOnTap,
              ),
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SearchInputText(
            controller: textEditController,
            hintText: "Buscar meus pokemons",
            onChange: searchOnChange,
          ),
        ),
      ),
      expandedHeight: 230,
      pinned: true,
      floating: true,
      forceElevated: true,
    );
  }
}
