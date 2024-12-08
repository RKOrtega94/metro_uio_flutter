import 'package:flutter/material.dart';

class DropdownFieldWidget extends StatelessWidget {
  final String label;
  final bool required;
  final List<DropDownItem> items;
  const DropdownFieldWidget({
    required this.label,
    this.required = false,
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label),
            if (required)
              const Text(
                '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: DropdownButton<DropDownItem>(
              value: null,
              items: items
                  .map(
                    (item) => DropdownMenuItem<DropDownItem>(
                      value: item,
                      child: Text(item.label),
                    ),
                  )
                  .toList(),
              dropdownColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              underline: Container(),
              isExpanded: true,
              hint: const Text(
                'Selecciona una opción',
                maxLines: 1,
              ),
              onChanged: (DropDownItem? value) {},
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownItem {
  final String value;
  final String label;

  DropDownItem({
    required this.value,
    required this.label,
  });
}
