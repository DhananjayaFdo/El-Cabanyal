import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/services/provider/data_provider.dart';
import 'package:el_cabanyal/src/core/services/provider/shop_provider.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/modifiers/modifiers.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../product_bottom_sheet_widgets.dart';
import '../../tab_view_widgets.dart';

class ProductBottomSheet extends StatefulWidget {
  final ItemEntity item;

  const ProductBottomSheet({
    super.key,
    required this.item,
  });

  @override
  State<ProductBottomSheet> createState() => _ProductBottomSheetState();
}

class _ProductBottomSheetState extends State<ProductBottomSheet> with WidgetsBindingObserver {
  List<List<TextEditingController>> toppingsController = [];
  List<List<TextEditingController>> toppingsInitialController = [];
  final productQuantityController = TextEditingController();

  final scrollController = ScrollController();
  late PageController pageController;
  List<ModifierEntity> mode = [];
  List<List<ItemEntity>> toppings = [];
  List<List<ItemEntity>> subToppings = [];
  Map<String, dynamic> subs = {};

  void getAllModifiers() {
    productQuantityController.text = '1';

    DataProvider pro = Provider.of<DataProvider>(context, listen: false);

    List<String>? ids = widget.item.modifierGroupRules?.ids;
    if (ids == null || ids.isEmpty) return;

    for (String id in ids) {
      ModifierEntity? item = pro.modifiers?.firstWhere(
        (mode) {
          return mode.modifierGroupId!.contains(id);
        },
        orElse: () => ModifierEntity(),
      );

      if (item != null) {
        mode.add(item);
      }
    }

    for (ModifierEntity modifierEntity in mode) {
      List<ItemEntity> data = [];
      List<TextEditingController> controllers = [];
      List<TextEditingController> initialControllers = [];

      for (int j = 0; j < (modifierEntity.modifierOptions?.length ?? 0); j++) {
        List<ItemEntity>? items = pro.item?.where(
          (ele) {
            return ele.menuId!.contains(modifierEntity.modifierOptions![j].id ?? '');
          },
        ).toList();

        if (items != null && items.isNotEmpty) {
          data.add(items.first);

          controllers.add(TextEditingController());
          initialControllers.add(TextEditingController());

          controllers.last.text = '0';
          initialControllers.last.text = '0';
        }
      }

      toppingsController.add(controllers);
      toppingsInitialController.add(initialControllers);
      toppings.add(data);
    }

    int currentIndex = 0;

    while (currentIndex < toppings.length) {
      for (int x = 0; x < toppings.length; x++) {
        for (int j = 0; j < toppings[x].length; j++) {
          if (toppings[x][j].modifierGroupRules == null) {
            continue;
          } else {
            if (toppings[x][j].modifierGroupRules!.ids == null) {
              subs.addAll({"": []});
            } else {
              subs.addAll({"$x$j": toppings[x][j].modifierGroupRules!.ids!});
            }
          }
        }
      }

      currentIndex++;
    }

    print(subs);
  }

  void increaseMain() {
    setState(() {
      for (int x = 0; x < toppingsController.length; x++) {
        for (int j = 0; j < toppingsController[x].length; j++) {
          if (toppingsController[x][j].text != '0') {
            int initial = int.parse(toppingsInitialController[x][j].text);
            int current = int.parse(toppingsController[x][j].text);

            toppingsController[x][j].text = (current + initial).toString();
          }
        }
      }
    });
  }

  void decreaseMain() {
    setState(() {
      for (int x = 0; x < toppingsController.length; x++) {
        for (int j = 0; j < toppingsController[x].length; j++) {
          if (toppingsController[x][j].text != '0') {
            int initial = int.parse(toppingsInitialController[x][j].text);
            int current = int.parse(toppingsController[x][j].text);

            toppingsController[x][j].text = (current - initial).toString();
          }
        }
      }
    });
  }

  int calculateTotal() {
    ShopProvider shop = Provider.of<ShopProvider>(context, listen: false);

    if (widget.item.priceInfo == null) return 0;
    if (widget.item.priceInfo!.price == null) return 0;

    switch (shop.orderType) {
      case ShopRepo.table:
        return widget.item.priceInfo!.price!.tablePrice ?? 0;
      case ShopRepo.delivery:
        return widget.item.priceInfo!.price!.deliveryPrice ?? 0;
      case ShopRepo.pickup:
        return widget.item.priceInfo!.price!.pickupPrice ?? 0;
      default:
        return widget.item.priceInfo!.price!.deliveryPrice ?? 0;
    }
  }

  @override
  void initState() {
    super.initState();
    getAllModifiers();
    pageController = PageController(initialPage: 0);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    scrollController.dispose();
    pageController.dispose();

    //? ---------
    productQuantityController.dispose();
    for (var element in toppingsController) {
      element.forEach((ele) {
        ele.dispose();
      });
    }
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    checkKeyBoardAppear();
  }

  void checkKeyBoardAppear() {
    if (MediaQuery.of(context).viewInsets.bottom == 0) {
    } else {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (context, data, child) {
      // for (var element in widget.item.modifierGroupRules!.ids!) {
      //   mode.addAll(data.modifiers!.where((ele) => ele.modifierGroupId == element).toList());
      // }

      return Container(
        height: heightUsingMQ(context, 0.9),
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
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom == 0 ? 20 : (MediaQuery.of(context).viewInsets.bottom + 10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackBtn(),
                  ImageShower(item: widget.item),
                  DetailsShower(item: widget.item),
                  CustomTabBar(item: widget.item, pageController: pageController),

                  //? ----------------
                  const DivideCon(),
                  ToppingsSection(
                    toppings: toppings,
                    toppingsControllers: toppingsController,
                    toppingsInitialController: toppingsInitialController,
                  ),
                  // const SubsShower(),
                  const DivideCon(),
                  const SizesShower(),

                  //? ----------------
                  const CommentsSection(),
                  BtnSection(
                    productQuantityController: productQuantityController,
                    increaseMain: increaseMain,
                    decreaseMain: decreaseMain,
                    calculateTotal: calculateTotal,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
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
