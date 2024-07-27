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
  final scrollController = ScrollController();
  late PageController pageController;
  List mode = [];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    scrollController.dispose();
    pageController.dispose();
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
      for (var element in widget.item.modifierGroupRules!.ids!) {
        mode.addAll(data.modifiers!.where((ele) => ele.modifierGroupId == element).toList());
      }

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
                  (() {
                    if (widget.item.modifierGroupRules!.ids!.first.isEmpty) {
                      return const SizedBox();
                    } else {
                      return const Column(
                        children: [
                          DivideCon(),
                          ToppingsSection(),
                          SubsShower(),
                          DivideCon(),
                          SizesShower(),
                        ],
                      );
                    }
                  }()),

                  //? ----------------
                  const CommentsSection(),
                  const BtnSection(),
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
