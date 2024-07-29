import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/theme/app_theme.dart';
import '../../../../../../core/widgets/widgets.dart';

class BtnSection extends StatefulWidget {
  final TextEditingController productQuantityController;
  final void Function() increaseMain;
  final void Function() decreaseMain;

  const BtnSection({
    super.key,
    required this.productQuantityController,
    required this.increaseMain,
    required this.decreaseMain,
  });

  @override
  State<BtnSection> createState() => _BtnSectionState();
}

class _BtnSectionState extends State<BtnSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: CusDimensions.defaultPaddingSize,
        left: CusDimensions.defaultPaddingSize,
      ),
      child: Row(
        children: [
          ItemAddRemove(
            productQuantityController: widget.productQuantityController,
            increaseMain: widget.increaseMain,
            decreaseMain: widget.decreaseMain,
          ),
          AddToCartBtn(),
        ],
      ),
    );
  }
}

class ItemAddRemove extends StatefulWidget {
  final TextEditingController productQuantityController;
  final void Function() increaseMain;
  final void Function() decreaseMain;

  const ItemAddRemove({
    super.key,
    required this.productQuantityController,
    required this.increaseMain,
    required this.decreaseMain,
  });

  @override
  State<ItemAddRemove> createState() => _ItemAddRemoveState();
}

class _ItemAddRemoveState extends State<ItemAddRemove> {
  @override
  Widget build(BuildContext context) {
    int productQuty = widget.productQuantityController.text.isEmpty ? 0 : int.parse(widget.productQuantityController.text);
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppTheme.ASH,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CustomizableBtn(
            text: '-',
            onTap: () => setState(() {
              if (productQuty > 1) {
                widget.productQuantityController.text = "${productQuty - 1}";
                widget.decreaseMain();
              }
            }),
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(3),
            height: 25,
            width: 25,
            backgroundColor: AppTheme.ASH,
          ),

          //? --------
          SizedBox(
            width: 40,
            child: Center(
              child: Text(
                productQuty.toString(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(),
              ),
            ),
          ),

          CustomizableBtn(
            text: '+',
            onTap: () => setState(() {
              if (productQuty < 10) {
                widget.productQuantityController.text = "${productQuty + 1}";
                widget.increaseMain();
              }
            }),
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(3),
            height: 25,
            width: 25,
            backgroundColor: AppTheme.ASH,
          ),
        ],
      ),
    );
  }
}

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CustomizableBtn(
          height: 50,
          text: 'Add to Cart  ₹1260',
          onTap: () {},
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppTheme.WHITE),
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
