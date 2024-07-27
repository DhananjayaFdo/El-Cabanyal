import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/widgets/cus_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/theme/app_theme.dart';
import '../../../../../../core/widgets/widgets.dart';

class SizesShower extends StatelessWidget {
  const SizesShower({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        left: CusDimensions.defaultPaddingSize,
        right: CusDimensions.defaultPaddingSize,
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //? ---------
          Text(
            'Choose Size',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(),
          ),

          //? ---------
          spacerVar(15),

          //? ---------
          SizeCategories(),

          //? ---------
          SizeTypes(),

          //? ---------
          CusDividers(),
        ],
      ),
    );
  }
}

class SizeCategories extends StatefulWidget {
  const SizeCategories({super.key});

  @override
  State<SizeCategories> createState() => _SizeCategoriesState();
}

class _SizeCategoriesState extends State<SizeCategories> {
  String selectedSize = '';
  List sizes = ['small ', 'medium', 'large'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...sizes
              .map(
                (e) => Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87),
                      ),
                    ),

                    //? ---------
                    spacerHor(5),

                    //? ---------
                    Text(
                      setStringText(e).capitalize(),
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(),
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class SizeTypes extends StatefulWidget {
  const SizeTypes({super.key});

  @override
  State<SizeTypes> createState() => _SizeTypesState();
}

class _SizeTypesState extends State<SizeTypes> {
  List<TextEditingController> toppingController = [];

  List sizeTypes = ['Classic Thin', 'New York Style Crus', 'Detroit Style'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: List.generate(
            sizeTypes.length,
            (index) {
              toppingController.add(TextEditingController());
              toppingController[index].text = '0';
              return SizeQuantityRow(title: sizeTypes[index], quantityController: toppingController[index]);
            },
          ),
        ),
      ),
    );
  }
}

class SizeQuantityRow extends StatefulWidget {
  final String title;
  final TextEditingController quantityController;

  const SizeQuantityRow({super.key, required this.quantityController, required this.title});

  @override
  State<SizeQuantityRow> createState() => _SizeQuantityRowState();
}

class _SizeQuantityRowState extends State<SizeQuantityRow> {
  @override
  Widget build(BuildContext context) {
    int currentQuantity = int.parse(widget.quantityController.text);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          //? ---------
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

class CusDividers extends StatelessWidget {
  const CusDividers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 0),
        spacerVar(20),
        Divider(height: 0),
      ],
    );
  }
}
