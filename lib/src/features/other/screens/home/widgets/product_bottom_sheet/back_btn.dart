import 'package:el_cabanyal/src/core/widgets/cus_navigations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/constants.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: CusDimensions.defaultPaddingSize,
        right: CusDimensions.defaultPaddingSize,
      ),
      child: InkWell(
        onTap: () => popNavigator(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
