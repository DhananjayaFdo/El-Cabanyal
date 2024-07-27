import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/widgets/widgets.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsShower extends StatelessWidget {
  final ItemEntity item;

  const DetailsShower({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: CusDimensions.defaultPaddingSize,
        right: CusDimensions.defaultPaddingSize,
      ),
      child: Column(
        children: [
          //? ---------------------
          Row(
            children: [
              Expanded(
                child: Text(
                  setStringText(item.title!.en).capitalize(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                ),
              ),

              //? --------
              Text(
                "Rs.${setStringText(item.priceInfo!.price!.tablePrice).capitalize()}",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(),
              ),
            ],
          ),

          //? ---------------------
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Theme.of(context).primaryColor,
                ),

                //? --------
                Row(
                  children: [
                    Icon(Icons.star, color: Theme.of(context).primaryColor, size: 18),
                    spacerHor(3),
                    Text(
                      '5.0',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //? ---------------------
          Text(
            setStringText(item.description!.en).capitalize(),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(),
          ),
        ],
      ),
    );
  }
}
