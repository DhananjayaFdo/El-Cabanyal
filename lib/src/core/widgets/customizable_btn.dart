import 'package:flutter/material.dart';

import '../../config/theme/app_theme.dart';

class CustomizableBtn extends StatefulWidget {
  final String text;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? contentPadding;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;
  final bool isLoading;
  final Color loadingIndicatorColor;
  final TextStyle? style;

  const CustomizableBtn({
    super.key,
    required this.text,
    required this.onTap,
    this.isLoading = false,
    this.width,
    this.height,
    this.padding,
    this.contentPadding,
    this.backgroundColor = AppTheme.white,
    this.borderRadius,
    this.loadingIndicatorColor = AppTheme.white,
    this.style,
  });

  @override
  State<CustomizableBtn> createState() => _CustomizableBtnState();
}

class _CustomizableBtnState extends State<CustomizableBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: widget.contentPadding ?? const EdgeInsets.all(0),
          height: widget.height ?? 40,
          width: widget.width ?? double.maxFinite,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: widget.borderRadius,
          ),
          child: Center(
            child: !widget.isLoading
                ? Text(
              widget.text,
              style: widget.style ?? Theme.of(context).textTheme.bodySmall!.copyWith(),
            )
                : SizedBox(
              height: (widget.height! - 25.0),
              width: (widget.height! - 25.0),
              child: CircularProgressIndicator(color: widget.loadingIndicatorColor),
            ),
          ),
        ),
      ),
    );
  }
}
