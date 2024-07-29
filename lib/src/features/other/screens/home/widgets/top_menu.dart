import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/assets_repo/svg_repo.dart';
import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/core/services/provider/shop_provider.dart';
import 'package:el_cabanyal/src/core/widgets/customizable_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'menu_bottom_sheet/menu_bottom_sheet_widgets.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPadding,
        right: AppConstants.defaultPadding,
        top: 15,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuBtn(),
          SearchIcon(),
        ],
      ),
    );
  }
}

class MenuBtn extends StatelessWidget {
  const MenuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopProvider>(
      builder: (context, shop, child) => InkWell(
        onTap: () => showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
          ),
          builder: (context) => const MenuBottomSheet(),
        ),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: AppTheme.ASH,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${shop.dayTime == ShopRepo.lunchTime ? 'LUNCH' : 'BREAKFAST'} MENU'),
              spacerHor(5),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(SvgRepo.search, height: 35);
  }
}
