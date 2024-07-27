import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/services/provider/data_provider.dart';
import 'package:el_cabanyal/src/core/services/provider/shop_provider.dart';
import 'package:el_cabanyal/src/core/widgets/widgets.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/category/category.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/menu/menu.dart';
import 'package:el_cabanyal/src/features/other/screens/home/product_bottom_sheet_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsShower extends StatefulWidget {
  const ItemsShower({super.key});

  @override
  State<ItemsShower> createState() => _ItemsShowerState();
}

class _ItemsShowerState extends State<ItemsShower> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShopProvider>(
      builder: (context, shop, child) => Consumer<DataProvider>(
        builder: (context, data, child) {
          //? -----------------
          if (data.categories == null) {
            return const SizedBox(height: 200, child: CenterLoading());

            //? -----------------
          } else if (data.categories!.isEmpty) {
            return const SizedBox(height: 200, child: CenterMsg(msg: 'No categories found'));

            //? -----------------
          } else if (data.categories!.isNotEmpty) {
            List selectedMenuItems = [];

            if (shop.selectedMenuItems.isEmpty) {
              if (data.menu == null) return const CenterMsg(msg: 'No items found');
              int ran = Random().nextInt(data.menu!.length ?? 0);
              selectedMenuItems.add(data.menu![ran].menuId);
            } else {
              selectedMenuItems = shop.selectedMenuItems;
            }

            return Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 5),
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: selectedMenuItems.length,
                itemBuilder: (context, index) {
                  List<CategoryEntity> menuCategories = [];

                  List<MenuEntity> menus = data.menu!.where((element) => element.menuId == selectedMenuItems[index]).toList();
                  MenuEntity menu = menus.first;

                  List menuCategoriesId = menu.menuCategoryIds ?? [];

                  for (var element in menuCategoriesId) {
                    List<CategoryEntity> list = data.categories!.where((ele) => ele.menuCategoryId == element).toList();
                    for (var ele2 in list) {
                      menuCategories.add(ele2);
                    }
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: menuCategories.first.menuEntities!.length,
                    itemBuilder: (context, index2) {
                      return ItemCard(
                        title: setStringText(menuCategories.first.title!.en).capitalize(),
                        isFinal: index2 == menuCategories.first.menuEntities!.length - 1,
                        isFirst: index2 == 0,
                        items: menuCategories.first.menuEntities![index2].id ?? '',
                      );
                    },
                  );
                },
              ),
            );

            //? -----------------
          } else {
            return const SizedBox(height: 200, child: CenterMsg(msg: 'No categories found'));
          }
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title;
  final bool isFinal;
  final bool isFirst;
  final String items;

  const ItemCard({
    super.key,
    required this.isFinal,
    required this.isFirst,
    required this.items,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    switch (items.isEmpty) {
      case true:
        return SizedBox();
      case false:
        return Consumer<DataProvider>(
          builder: (context, data, child) {
            ItemEntity item = data.item!.firstWhere((element) => element.menuId == items);
            return Consumer<ShopProvider>(
              builder: (context, shop, child) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: CusDimensions.defaultPaddingSize,
                      right: CusDimensions.defaultPaddingSize,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isFirst)
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 15,
                            ),
                            child: Text(
                              setStringText(title).toUpperCase(),
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppTheme.BLACK,
                                  ),
                            ),
                          ),

                        //? ------------------
                        InkWell(
                          onTap: () => showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                            ),
                            builder: (context) => ProductBottomSheet(item: item),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //? ------------------
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: item.imageUrl ?? '',
                                  imageBuilder: (context, imageProvider) => Image(image: imageProvider, fit: BoxFit.cover),
                                  errorWidget: (context, url, error) => const Center(child: Icon(Icons.image_not_supported_outlined, color: AppTheme.WHITE)),
                                ),
                              ),

                              //? ------------------
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //? ------------
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          setStringText(item.title!.en).capitalize(),
                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                                        ),
                                      ),

                                      //? ------------
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          setStringText(item.description!.en).capitalize(),
                                          maxLines: 2,
                                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                        ),
                                      ),

                                      //? ------------
                                      Row(
                                        children: [
                                          Text(
                                            "Rs.${(() {
                                              switch (shop.orderType) {
                                                case ShopRepo.table:
                                                  return item.priceInfo!.price!.tablePrice.toString();
                                                case ShopRepo.pickup:
                                                  return item.priceInfo!.price!.pickupPrice.toString();
                                                case ShopRepo.delivery:
                                                  return item.priceInfo!.price!.deliveryPrice.toString();
                                                default:
                                                  return '';
                                              }
                                            }())}",
                                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                                  color: Theme.of(context).primaryColor,
                                                ),
                                          ),

                                          //? ------------
                                          if (item.metaData!.isDealProduct!.isNotEmpty)
                                            Padding(
                                              padding: const EdgeInsets.only(left: 15, right: 10),
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                                decoration: BoxDecoration(
                                                  color: AppTheme.YELLOW,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  '2 Promotions Available',
                                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(),
                                                ),
                                              ),
                                            )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //? ------------
                        if (!isFinal) const Divider(height: 20),
                      ],
                    ),
                  ),

                  //? ------------
                  if (isFinal)
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        height: 8,
                        width: double.maxFinite,
                        color: AppTheme.ASH,
                      ),
                    )
                ],
              ),
            );
          },
        );
      default:
        return SizedBox();
    }
  }
}
