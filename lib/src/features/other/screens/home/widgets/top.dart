import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/assets_repo/img_repo.dart';
import 'package:el_cabanyal/src/core/assets_repo/svg_repo.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/services/provider/shop_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Stack(
            children: [
              Container(
                height: heightUsingMQ(context, 0.3),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  image: const DecorationImage(
                    image: AssetImage(ImgRepo.placeholder),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //? ----------
              Container(
                height: heightUsingMQ(context, 0.3),
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black87, Colors.black12],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              )
            ],
          ),
        ),

        //? ----------
        const DinningOptions(),
      ],
    );
  }
}

class DinningOptions extends StatefulWidget {
  const DinningOptions({super.key});

  @override
  State<DinningOptions> createState() => _DinningOptionsState();
}

class _DinningOptionsState extends State<DinningOptions> {
  String selected = "table";

  List options = [
    {"title": ShopRepo.delivery, "svg": SvgRepo.scooter},
    {"title": ShopRepo.pickup, "svg": SvgRepo.restaurantTable},
    {"title": ShopRepo.table, "svg": SvgRepo.takeAwayFood},
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ShopProvider>(
      builder: (context, shop, child) => Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              options.length,
              (index) => GestureDetector(
                onTap: () => shop.setOrderType(options[index]['title']),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 45,
                  decoration: BoxDecoration(
                    color: shop.orderType == options[index]['title'] ? AppTheme.ASH : AppTheme.WHITE,
                    borderRadius: (() {
                      if (index == 0) {
                        return const BorderRadius.only(bottomLeft: Radius.circular(30), topLeft: Radius.circular(30));
                      } else if (index == 2) {
                        return const BorderRadius.only(bottomRight: Radius.circular(30), topRight: Radius.circular(30));
                      } else {
                        return null;
                      }
                    }()),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    options[index]['svg'],
                    width: 30,
                    color: shop.orderType == options[index]['title'] ? Theme.of(context).primaryColor : AppTheme.BLACK,
                  ),
                ),
              ),
            ).toList(),
          ],
        ),
      ),
    );
  }
}
