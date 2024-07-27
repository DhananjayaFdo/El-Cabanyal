import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_cabanyal/src/core/assets_repo/img_repo.dart';
import 'package:el_cabanyal/src/features/other/domain/entity/entities.dart';
import 'package:flutter/material.dart';

import '../../../../../../config/theme/app_theme.dart';
import '../../../../../../core/constants/constants.dart';

class ImageShower extends StatelessWidget {
  final ItemEntity item;

  const ImageShower({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: CusDimensions.defaultPaddingSize,
        right: CusDimensions.defaultPaddingSize,
        bottom: 15,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl: item.imageUrl ?? '',
          height: 180,
          width: double.maxFinite,
          imageBuilder: (context, imageProvider) => Image(
            image: imageProvider,
            fit: BoxFit.cover,
            height: 180,
            width: double.maxFinite,
          ),
          errorWidget: (context, url, error) => const Center(
            child: Icon(
              Icons.image_not_supported_outlined,
              color: AppTheme.WHITE,
            ),
          ),
        ),
      ),
    );
  }
}
