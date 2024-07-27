import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/widgets/cus_navigations.dart';
import 'package:el_cabanyal/src/core/widgets/cus_widgets.dart';
import 'package:el_cabanyal/src/core/widgets/customizable_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBottomSheet extends StatefulWidget {
  const MenuBottomSheet({super.key});

  @override
  State<MenuBottomSheet> createState() => _MenuBottomSheetState();
}

class _MenuBottomSheetState extends State<MenuBottomSheet> {
  final scrollController = ScrollController();
  List options = [
    {"title": 'Lunch · 10am - 5pm', "active": false},
    {"title": 'Breakfast · 5pm - 11pm', "active": true},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: AppTheme.WHITE,
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
              left: CusDimensions.defaultPaddingSize,
              right: CusDimensions.defaultPaddingSize,
            ),
            child: Column(
              children: [
                //? --------
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Container(
                    height: 5,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.ASH,
                    ),
                  ),
                ),

                //? --------
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Select menu',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => popNavigator(context),
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),

                //? --------
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(height: 0),
                ),

                //?------
                ...options.map((e) => OptionCard(data: e)).toList(),

                //?------
                CustomizableBtn(
                  padding: EdgeInsets.only(top: 10),
                  text: 'Done',
                  onTap: () {},
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppTheme.WHITE),
                  backgroundColor: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final Map data;

  const OptionCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: AppTheme.ASH),
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(
              child: Text(
                setStringText(data['title']).capitalize(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(),
              ),
            ),

            //? ---------
            BtnCard(isActive: data['active']),
          ],
        ),
      ),
    );
  }
}

class BtnCard extends StatelessWidget {
  final bool isActive;

  const BtnCard({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      ),
      child: isActive
          ? Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.WHITE,
              ),
            )
          : const SizedBox(),
    );
  }
}

class DivideCon extends StatelessWidget {
  const DivideCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 5,
        width: double.maxFinite,
        color: AppTheme.ASH,
      ),
    );
  }
}
