
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool enabled;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final bool showLabel;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.enabled = true,
    this.textStyle,
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius = 8.0,
    this.contentPadding,
    this.showLabel = true,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;
  FocusNode? _internalFocusNode;

  FocusNode get _effectiveFocusNode =>
      widget.focusNode ?? (_internalFocusNode ??= FocusNode());

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  void dispose() {
    _internalFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label text
        if (widget.showLabel && widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF6B7280),
            ),
          ),
          SizedBox(height: 8.h),
        ],

        /// TextFormField
        TextFormField(
          controller: widget.controller,
          focusNode: _effectiveFocusNode,
          obscureText: _obscureText,
          keyboardType: widget.keyboardType,
          validator: widget.validator,
          onChanged: widget.onChanged,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          maxLines: widget.maxLines,
          enabled: widget.enabled,
          textInputAction: widget.textInputAction,
          // onFieldSubmitted: (value) {
          //   // Gọi callback nếu có
          //   widget.onFieldSubmitted?.call(value);
          //
          //   // Xử lý focus logic
          //   if (widget.textInputAction == TextInputAction.next) {
          //     FocusScope.of(context).nextFocus();
          //   } else if (widget.textInputAction == TextInputAction.done) {
          //     FocusScope.of(context).unfocus();
          //   }
          // },
          onFieldSubmitted: (value) {
            // Ưu tiên callback từ parent widget
            if (widget.onFieldSubmitted != null) {
              widget.onFieldSubmitted?.call(value);
            } else {
              // Chỉ tự động xử lý nếu không có callback custom
              if (widget.textInputAction == TextInputAction.next) {
                FocusScope.of(context).nextFocus();
              } else if (widget.textInputAction == TextInputAction.done) {
                FocusScope.of(context).unfocus();
              }
            }
          },
          style: widget.textStyle ??
              TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFF111827),
              ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: const Color(0xFF9CA3AF),
              fontSize: 16.sp,
            ),
            prefixIcon: widget.prefixIcon,
            suffixIcon: _buildSuffixIcon(),
            filled: true,
            fillColor: widget.fillColor ?? const Color(0xFFF9FAFB),
            contentPadding: widget.contentPadding ??
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),

            /// Borders
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius.r),
              borderSide: BorderSide(
                color: widget.borderColor ?? const Color(0xFFE5E7EB),
                width: 1.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius.r),
              borderSide: BorderSide(
                color: widget.borderColor ?? const Color(0xFFE5E7EB),
                width: 1.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius.r),
              borderSide: BorderSide(
                color: widget.focusedBorderColor ?? const Color(0xFF3B82F6),
                width: 2.w,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius.r),
              borderSide: BorderSide(
                color: const Color(0xFFEF4444),
                width: 1.w,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius.r),
              borderSide: BorderSide(
                color: const Color(0xFFEF4444),
                width: 2.w,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.obscureText) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
          color: const Color(0xFF6B7280),
          size: 20.sp,
        ),
        onPressed: () {
          setState(() => _obscureText = !_obscureText);
        },
      );
    }
    return widget.suffixIcon;
  }
}
