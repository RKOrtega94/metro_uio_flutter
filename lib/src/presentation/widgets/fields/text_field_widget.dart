import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String? hint;
  final bool required;
  final bool password;
  const TextFieldWidget({
    required this.label,
    this.hint,
    this.required = false,
    this.password = false,
    super.key,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool obscureText;

  @override
  void initState() {
    obscureText = widget.password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.label),
            if (widget.required)
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
        TextFormField(
          focusNode: FocusNode(),
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            suffixIcon: widget.password
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
