import 'package:el_cabanyal/src/core/constants/app_dimensions.dart';
import 'package:el_cabanyal/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CommentsSection extends StatefulWidget {
  const CommentsSection({super.key});

  @override
  State<CommentsSection> createState() => _CommentsSectionState();
}

class _CommentsSectionState extends State<CommentsSection> {
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
          Divider(),

          //? ------
          spacerVar(20),

          const Text('Add Comments (Optional)'),

          //? ------
          spacerVar(10),

          //? ----------
          TextField(
            keyboardType: TextInputType.text,
            autofocus: false,
            autocorrect: false,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(),
            minLines: 6,
            maxLines: 12,
            decoration: InputDecoration(
              border: CustomStyles.outlineInputBorder1(),
              focusedBorder: CustomStyles.outlineInputBorder1(),
              enabledBorder: CustomStyles.outlineInputBorder1(),

              //? --------
              hintText: 'Write here...',
            ),
          ),
        ],
      ),
    );
  }
}
