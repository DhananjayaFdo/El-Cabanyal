import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/widgets/customizable_btn.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/constants.dart';

class ToppingsSection extends StatefulWidget {
  const ToppingsSection({super.key});

  @override
  State<ToppingsSection> createState() => _ToppingsSectionState();
}

class _ToppingsSectionState extends State<ToppingsSection> {
  List<TextEditingController> toppingController = [];
  List topping = ['Beef', 'Smoked Beef', 'Mozarella Cheese', 'Mushroom', 'Paprika'];

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Column(
            children: List.generate(
              topping.length,
              (index) {
                toppingController.add(TextEditingController());
                toppingController[index].text = '0';
                return QuantityRow(title: topping[index], quantityController: toppingController[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}

class QuantityRow extends StatefulWidget {
  final String title;
  final TextEditingController quantityController;

  const QuantityRow({super.key, required this.quantityController, required this.title});

  @override
  State<QuantityRow> createState() => _QuantityRowState();
}

class _QuantityRowState extends State<QuantityRow> {
  @override
  Widget build(BuildContext context) {
    int currentQuantity = int.parse(widget.quantityController.text);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.title,
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
