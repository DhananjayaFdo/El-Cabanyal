import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/widgets/customizable_btn.dart';
import 'package:flutter/material.dart';

class BtnColumn extends StatelessWidget {
  const BtnColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          CustomizableBtn(
            text: 'Basket • 3 items • £24.00',
            onTap: () {},
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            borderRadius: BorderRadius.circular(30),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppTheme.WHITE,
                ),
          ),

          //? --------
          CustomizableBtn(
            text: 'view basket',
            onTap: () {},
            backgroundColor: AppTheme.ASH,
            padding: EdgeInsets.only(left: 20, right: 20),
            borderRadius: BorderRadius.circular(30),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
