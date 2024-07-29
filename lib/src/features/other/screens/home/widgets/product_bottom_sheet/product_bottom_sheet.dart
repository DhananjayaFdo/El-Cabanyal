import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/constants/constants.dart';
import 'package:el_cabanyal/src/core/services/provider/data_provider.dart';
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
  List<TextEditingController> toppingsController = [];
  List<TextEditingController> toppingsInitialController = [];
  final productQuantityController = TextEditingController();

  final scrollController = ScrollController();
  late PageController pageController;
  List<ModifierEntity> mode = [];
  List<List<ItemEntity>> toppings = [];

  List<List<ItemEntity>> subToppings = [];

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
      element.dispose();
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

  List<ModifierEntity> modifiers = [];

  void getAllModifiers() {
    productQuantityController.text = '1';

    DataProvider pro = Provider.of<DataProvider>(context, listen: false);

    bool isEnd = false;
    bool isFirst = true;

    while (isEnd == true) {
      if (isFirst) {}
    }

    List<String>? ids = widget.item.modifierGroupRules!.ids;
    if (ids == null || ids.isEmpty || ids.first.isEmpty) return;

    for (int x = 0; x < ids.length; x++) {
      ModifierEntity item = pro.modifiers!.where((mode) => mode.modifierGroupId == ids[x]).toList().first;
      mode.add(item);
    }

    List<ItemEntity> data = [];

    for (int x = 0; x < mode.length; x++) {
      ModifierEntity modifierEntity = mode[x];

      for (int j = 0; j < modifierEntity.modifierOptions!.length; j++) {
        ItemEntity? item = pro.item?.singleWhere((ele) => ele.menuId == mode[x].modifierOptions![j].id);
        if (item != null) {
          data.add(item);
          toppingsController.add(TextEditingController());
          toppingsInitialController.add(TextEditingController());
          toppingsController[j].text = '0';
          toppingsInitialController[j].text = '0';
        }
      }
      toppings.add(data);
    }

    // for (var id in list) {
    //   ModifierEntity item = pro.modifiers!.where((item) => item.modifierGroupId == id).toList().first;
    //   List<ItemEntity> item2 = pro.item!.where((ele) => ele.menuId == item.modifierGroupId).toList();
    //
    //   print(item2);
    // }
  }

  void increaseMain() {
    setState(() {
      for (int x = 0; x < toppingsController.length; x++) {
        if (toppingsController[x].text != '0') {
          int initial = int.parse(toppingsInitialController[x].text);
          int current = int.parse(toppingsController[x].text);

          print(initial);
          print(current);

          toppingsController[x].text = (current + initial).toString();
        }
      }
    });
  }

  void decreaseMain() {
    setState(() {
      for (int x = 0; x < toppingsController.length; x++) {
        if (toppingsController[x].text != '0') {
          int initial = int.parse(toppingsInitialController[x].text);
          int current = int.parse(toppingsController[x].text);

          toppingsController[x].text = (current - initial).toString();
        }
      }
    });
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
                  DivideCon(),
                  ToppingsSection(
                    toppings: toppings,
                    toppingsControllers: toppingsController,
                    toppingsInitialController: toppingsInitialController,
                  ),
                  // SubsShower(),
                  DivideCon(),
                  // SizesShower(),

                  //? ----------------
                  // const CommentsSection(),
                  BtnSection(
                    productQuantityController: productQuantityController,
                    increaseMain: increaseMain,
                    decreaseMain: decreaseMain,
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
