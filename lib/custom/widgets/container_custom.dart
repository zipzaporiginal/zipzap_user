import 'package:flutter/material.dart';

class ContainerCustom extends StatelessWidget {
  final VoidCallback? callBack;
  final Widget? child;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  final double marginTop;
  final EdgeInsetsGeometry? padding;
  final double paddingLeft;
  final double paddingRight;
  final double paddingBottom;
  final double paddingTop;
  final Alignment alignment;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final Color? bgColor;
  final DecorationImage? decorationImage;
  final Gradient? gradient;
  final List<BoxShadow>? shadow;

  const ContainerCustom({
    Key? key,
    this.height,
    this.width,
    this.callBack,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.marginTop = 0,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingBottom = 0,
    this.paddingTop = 0,
    this.alignment = Alignment.center,
    this.border,
    this.borderRadius,
    this.bgColor,
    this.decorationImage,
    this.child,
    this.margin,
    this.padding,
    this.gradient,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (callBack == null)
          ? null
          : () {
              callBack!();
            },
      child: Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius,
          gradient: gradient,
          image: decorationImage,
          color: (gradient == null) ? bgColor : null,
          boxShadow: shadow,
        ),
        alignment: alignment,
        margin: margin ??
            EdgeInsets.fromLTRB(
              marginLeft,
              marginTop,
              marginRight,
              marginBottom,
            ),
        padding: padding ??
            EdgeInsets.fromLTRB(
              paddingLeft,
              paddingTop,
              paddingRight,
              paddingBottom,
            ),
        height: height != null ? height! : height,
        width: width != null ? width! : width,
        child: child,
      ),
    );
  }
}
