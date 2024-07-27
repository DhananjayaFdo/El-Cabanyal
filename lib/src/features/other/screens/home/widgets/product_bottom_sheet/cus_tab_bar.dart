import 'package:el_cabanyal/src/config/theme/app_theme.dart';
import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final ItemEntity item;
  final PageController pageController;

  const CustomTabBar({
    super.key,
    required this.item,
    required this.pageController,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  int selectedOption = 0;

  List tabs = ['Ingredients', 'Nutritional ', 'Instructions', 'Allergies', 'Instructions'];
  List ingredients = ['eggs', 'fish', 'milk', 'mollusks', 'mustard', 'gluten', 'mustard', 'gluten'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Stack(
              children: [
                //? -----
                ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: CusDimensions.defaultPaddingSize),
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => setState(() {
                      selectedOption = index;
                      widget.pageController.animateToPage(selectedOption, duration: const Duration(seconds: 1), curve: Curves.ease);
                    }),
                    child: MenuCard(
                      item: tabs[index],
                      isSelect: selectedOption == index,
                    ),
                  ),
                ),

                //? -----
                const Positioned(
                  bottom: 4,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: CusDimensions.defaultPaddingSize),
                    child: Divider(
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //? -----------------
          Padding(
            padding: const EdgeInsets.only(left: CusDimensions.defaultPaddingSize, right: CusDimensions.defaultPaddingSize),
            child: SizedBox(
              height: 140,
              child: PageView.builder(
                controller: widget.pageController,
                onPageChanged: (value) => setState(() => selectedOption = value),
                itemCount: tabs.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'This product contains ingredients that may trigger allergies. Please review the ingredient list for details',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(),
                      ),
                    ),

                    //? ---------
                    Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        runAlignment: WrapAlignment.center,
                        spacing: 5,
                        runSpacing: 5,
                        children: [
                          ...List.generate(ingredients.length > 5 ? 7 : ingredients.length, (index) {
                            if (ingredients.length > 5 && index == 6) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                                  child: Text(
                                    'See More >',
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                ),
                              );
                            }

                            return Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppTheme.BLACK.withOpacity(0.5)),
                              ),
                              child: Text(
                                ingredients[index],
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                              ),
                            );
                          }).toList()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String item;
  final bool isSelect;

  const MenuCard({
    super.key,
    required this.item,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: 80,
          alignment: Alignment.center,
          child: Text(
            item,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(),
          ),
        ),

        //? --------------
        if (isSelect)
          Container(
            height: 3,
            width: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          )
      ],
    );
  }
}
