import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final Function(int?)?  onChanged;
  final int? selectedValue;
  final List<RadioValue>? radioValues;

  const CustomRadioButton({Key? key,  this.onChanged,  this.selectedValue,  this.radioValues}) : super(key: key);

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class RadioValue{
  final value;
  final key;
  RadioValue(this.key,this.value);
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  var _selectedOption = 0;
  final List<RadioValue> valueList = [RadioValue(1, "Test1"),RadioValue(2, "Test2")];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        child: Column(
            children: valueList.map(( iterator) =>
                RadioListTile(
                    title:Text("${iterator.value}"),
                    value: iterator.key,
                    groupValue: _selectedOption,
                    onChanged:(val){
                      setState(() {
                        _selectedOption = iterator.key;
                      });
                    }
                )
            ).toList()
        ),
      ),
    );



    //   Column(
    //   children: [
    //
    //     // RadioListTile<String>(
    //     //   title: const Text('Test 1'),
    //     //   value: RadioOptions.option1,
    //     //   groupValue: _selectedOption,
    //     //   onChanged: (RadioOptions? value) {
    //     //     setState(() {
    //     //       _selectedOption = value!;
    //     //     });
    //     //   },
    //     // ),
    //     //
    //     // RadioListTile<RadioOptions>(
    //     //   title: const Text('Test 2'),
    //     //   value: RadioOptions.option2,
    //     //   groupValue: _selectedOption,
    //     //   onChanged: (RadioOptions? value) {
    //     //     setState(() {
    //     //       _selectedOption = value!;
    //     //     });
    //     //   },
    //     // ),
    //
    //
    //     //  Radio(value: 0, groupValue: widget.selectedValue,
    //     //      onChanged: widget.onChanged),
    //     // Text("Demo"),
    //   ],
    // );
  }
}
