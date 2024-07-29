import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/services/provider/data_provider.dart';
import 'package:el_cabanyal/src/core/widgets/customizable_btn.dart';
import 'package:el_cabanyal/src/core/widgets/widgets.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/modifiers/modifiers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../domain/entity/entities.dart';

class ToppingsSection extends StatefulWidget {
  final List<List<ItemEntity>> toppings;
  final List<List<TextEditingController>> toppingsControllers;
  final List<List<TextEditingController>> toppingsInitialController;

  const ToppingsSection({
    super.key,
    required this.toppings,
    required this.toppingsControllers,
    required this.toppingsInitialController,
  });

  @override
  State<ToppingsSection> createState() => _ToppingsSectionState();
}

class _ToppingsSectionState extends State<ToppingsSection> {
  List<TextEditingController> toppingController = [];
  List topping = ['Beef', 'Smoked Beef', 'Mozarella Cheese', 'Mushroom', 'Paprika'];

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, data, child) => Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: CusDimensions.defaultPaddingSize,
          right: CusDimensions.defaultPaddingSize,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Toppings',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(),
              ),
            ),
            // Column(
            //   children: List.generate(
            //     topping.length,
            //     (index) {
            //       toppingController.add(TextEditingController());
            //       toppingController[index].text = '0';
            //       return QuantityRow(title: topping[index], quantityController: toppingController[index]);
            //     },
            //   ),
            // )

            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.toppings.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                List<ItemEntity> list = widget.toppings[index];
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index2) => QuantityRow(
                    title: list[index2].title!.en ?? '',
                    quantityController: widget.toppingsControllers[index][index2],
                    toppingsInitialController: widget.toppingsInitialController[index][index2],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuantityRow extends StatefulWidget {
  final String title;

  final TextEditingController quantityController;
  final TextEditingController toppingsInitialController;

  const QuantityRow({
    super.key,
    required this.quantityController,
    required this.title,
    required this.toppingsInitialController,
  });

  @override
  State<QuantityRow> createState() => _QuantityRowState();
}

class _QuantityRowState extends State<QuantityRow> {
  @override
  Widget build(BuildContext context) {
    int currentQuantity = widget.quantityController.text.isEmpty ? 0 : int.parse(widget.quantityController.text);
    int currentQuantity2 = widget.quantityController.text.isEmpty ? 0 : int.parse(widget.quantityController.text);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              setStringText(widget.title).capitalize(),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(),
            ),
          ),
          //? ---------
          CustomizableBtn(
            text: '-',
            onTap: () {
              setState(() {
                if (currentQuantity > 0) {
                  widget.quantityController.text = "${currentQuantity - 1}";
                  widget.toppingsInitialController.text = "${currentQuantity2 - 1}";
                }
              });
            },
            style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(3),
            height: 25,
            width: 25,
          ),

          //? ---------
          SizedBox(
            width: 50,
            child: Center(
              child: Text(currentQuantity.toString()),
            ),
          ),

          //? ---------
          CustomizableBtn(
            text: '+',
            onTap: () {
              setState(() {
                if (currentQuantity < 10) {
                  widget.quantityController.text = "${currentQuantity + 1}";
                  widget.toppingsInitialController.text = "${currentQuantity2 + 1}";
                }
              });
            },
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppTheme.WHITE),
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(3),
            height: 25,
            width: 25,
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
