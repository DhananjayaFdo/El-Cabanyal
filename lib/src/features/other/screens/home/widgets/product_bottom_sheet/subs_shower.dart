import 'package:flutter/material.dart';

import '../../../../../../config/theme/app_theme.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/widgets/widgets.dart';

class SubsShower extends StatefulWidget {
  const SubsShower({super.key});

  @override
  State<SubsShower> createState() => _SubsShowerState();
}

class _SubsShowerState extends State<SubsShower> {
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
          ...List.generate(
            3,
            (index) => SubCard(),
          ),
        ],
      ),
    );
  }
}

class SubCard extends StatefulWidget {
  const SubCard({super.key});

  @override
  State<SubCard> createState() => _SubCardState();
}

class _SubCardState extends State<SubCard> {
  bool isShow = false;
  List<TextEditingController> toppingController = [];

  List topping = ['Beef', 'Smoked Beef', 'Mozarella Cheese', 'Mushroom', 'Paprika'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, bottom: 15),
      child: GestureDetector(
        onTap: () => setState(() => isShow = !isShow),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.WHITE,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 2,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: isShow ? 5 : 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub A',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              if (isShow)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.WHITE,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 2,
                        )
                      ],
                    ),
                    child: Column(
                      children: List.generate(
                        topping.length,
                        (index) {
                          toppingController.add(TextEditingController());
                          toppingController[index].text = '0';
                          return SubQuantityRow(title: topping[index], quantityController: toppingController[index]);
                        },
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class SubQuantityRow extends StatefulWidget {
  final String title;
  final TextEditingController quantityController;

  const SubQuantityRow({super.key, required this.quantityController, required this.title});

  @override
  State<SubQuantityRow> createState() => _SubQuantityRowState();
}

class _SubQuantityRowState extends State<SubQuantityRow> {
  @override
  Widget build(BuildContext context) {
    int currentQuantity = int.parse(widget.quantityController.text);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Beef',
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
