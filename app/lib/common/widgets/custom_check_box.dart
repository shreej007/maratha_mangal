
import 'package:flutter/material.dart';

import '../constants/app_colours.dart';

class CustomCheckbox<T> extends StatefulWidget {
  final T value;
  final bool isChecked;
  final String label;
  final void Function(T value, bool isChecked) onChanged;

  const CustomCheckbox({
    Key? key,
    required this.value,
    required this.isChecked,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxState<T> createState() => _CustomCheckboxState<T>();
}

class _CustomCheckboxState<T> extends State<CustomCheckbox<T>> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: ListTileTheme(
        horizontalTitleGap: 0,
        child: SizedBox(
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            tileColor: AppColors.primaryDark,
            side: BorderSide(width: 1, color: AppColors.textLightGrey),
            controlAffinity: ListTileControlAffinity.leading,
            visualDensity: VisualDensity.compact,
            dense: true,
            value: _isChecked,
            activeColor: AppColors.primaryDark,
            selectedTileColor: AppColors.primaryDark,
            onChanged: (bool? newValue) {
              if (newValue != null) {
                setState(() {
                  _isChecked = newValue;
                  widget.onChanged(widget.value, newValue);
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
