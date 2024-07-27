import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/services/provider/data_provider.dart';
import 'package:el_cabanyal/src/core/services/provider/shop_provider.dart';
import 'package:el_cabanyal/src/core/widgets/widgets.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/menu/menu.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HorizontalMenu extends StatefulWidget {
  const HorizontalMenu({super.key});

  @override
  State<HorizontalMenu> createState() => _HorizontalMenuState();
}

class _HorizontalMenuState extends State<HorizontalMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, data, child) {
        //? ------------------------
        if (data.menu == null) {
          return const SizedBox();

          //? ------------------------
        } else if (data.menu!.isEmpty) {
          // return const CenterMsg(msg: 'No Category Found');
          return const SizedBox();

          //? ------------------------
        } else if (data.menu!.isNotEmpty) {
          return SizedBox(
            height: 30,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              itemCount: data.menu!.length,
              itemBuilder: (context, index) {
                MenuEntity menu = data.menu![index];

                return MenuItemCard(menu: menu);
              },
            ),
          );

          //? ------------------------
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final MenuEntity menu;

  const MenuItemCard({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopProvider>(
      builder: (context, shop, child) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: GestureDetector(
          onTap: () => menu.menuId != null ? shop.menuSelect(menu.menuId!) : null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: shop.selectedMenuItems.contains(menu.menuId) ? Theme.of(context).primaryColor : AppTheme.WHITE,
              borderRadius: BorderRadius.circular(30),
              border: shop.selectedMenuItems.contains(menu.menuId) ? null : Border.all(color: Colors.black12),
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                Text(
                  setStringText(menu.title == null ? '' : menu.title!.en).capitalize(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: shop.selectedMenuItems.contains(menu.menuId) ? AppTheme.WHITE : AppTheme.BLACK,
                      ),
                ),
                if (shop.selectedMenuItems.contains(menu.menuId))
                  const Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Icon(Icons.close, size: 19, color: AppTheme.WHITE),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
