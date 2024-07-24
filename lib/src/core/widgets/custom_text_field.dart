import 'package:flutter/material.dart';

import '../../config/theme/app_theme.dart';

class ChangePassTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final TextInputType textInputType;

  // final String labelText;
  final bool isPassword;
  final IconData prefixIcon;
  final bool isPrefix;
  bool obscureText;
  final TextAlign textAlign;
  bool isLabel;
  final String labelText;
  bool isHint;
  final String hint;

  ChangePassTextField({
    super.key,
    required this.validator,
    required this.textEditingController,
    required this.textInputType,
    this.isHint = false,
    this.hint = 'hint',
    this.isLabel = false,
    this.labelText = 'label',
    this.prefixIcon = Icons.abc,
    this.isPassword = false,
    this.obscureText = false,
    this.isPrefix = false,
    this.textAlign = TextAlign.start,
  });

  @override
  State<ChangePassTextField> createState() => _ChangePassTextFieldState();
}

class _ChangePassTextFieldState extends State<ChangePassTextField> {
  UnderlineInputBorder outlineInputBorder({bool isFocused = false}) {
    return UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2)));
    // OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(10),
    //     borderSide: BorderSide(
    //       width: isFocused ? 2 : 1,
    //       color: Theme.of(context).colorScheme.secondary,
    //     ));
  }

  OutlineInputBorder outlineErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      autocorrect: false,
      textAlign: widget.textAlign,
      validator: widget.validator,
      obscureText: widget.obscureText,
      controller: widget.textEditingController,
      keyboardType: widget.textInputType,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppTheme.white),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(bottom: 20, top: 10),

        //prefix icon
        prefixIcon: widget.isPrefix
            ? Icon(
          widget.prefixIcon,
          color: Colors.white,
        )
            : null,

        //label text
        labelText: widget.isLabel == true ? widget.labelText : '',
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),

        //hint text
        hintText: widget.isHint ? widget.hint : '',
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black54),
        floatingLabelBehavior: FloatingLabelBehavior.always,

        //borders
        border: outlineErrorBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(isFocused: true),
        errorBorder: outlineInputBorder(),
        focusedErrorBorder: outlineInputBorder(),

        //error text style
        errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 12,
          color: Colors.red,
        ),

        //suffix icon
        suffixIcon: widget.isPassword
            ? IconButton(
          onPressed: () {
            setState(() {
              widget.obscureText = !widget.obscureText;
            });
          },

          //text obscure
          icon: widget.obscureText ? const Icon(Icons.visibility_off, size: 20, color: AppTheme.white) : const Icon(Icons.visibility, size: 20, color: AppTheme.white),
        )
            : null,
      ),
    );
  }
}
