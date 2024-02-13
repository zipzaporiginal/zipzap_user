import 'package:flutter/material.dart';

class RadioButtonGroupTileCustom extends StatefulWidget {
  final List<String> options;
  final ValueChanged<int>? onChanged;
  final int? selectedOption;
  final EdgeInsetsGeometry? margin;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;

  const RadioButtonGroupTileCustom({
    required this.options,
    this.onChanged,
    this.selectedOption,
    this.margin,
    this.textColor,
    this.textSize,
    this.fontWeight,
  });

  @override
  _CustomRadioButtonGroupState createState() => _CustomRadioButtonGroupState();
}

class _CustomRadioButtonGroupState extends State<RadioButtonGroupTileCustom> {
  int? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.selectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.options.length,
        (index) => Container(
          margin: widget.margin,
          child: Row(
            children: [
              Radio<int>(
                activeColor: Colors.black,
                value: index,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                  widget.onChanged?.call(value!);
                },
              ),
              Text(
                widget.options[index],
                style: TextStyle(
                  color: widget.textColor ?? Colors.black,
                  fontSize: widget.textSize,
                  fontWeight: widget.fontWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
