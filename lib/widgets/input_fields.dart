import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    this.textEditingController,
    required this.hint,
    required this.onTextChanged,
    required this.secureText,
    required this.onValidator,
    this.iconSuffix,
    required this.inputType,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final String hint;
  final bool secureText;
  final Function(String)? onTextChanged;
  final FormFieldValidator<String>? onValidator;
  final IconButton? iconSuffix;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 50,
      child: TextFormField(
        controller: textEditingController,
        onChanged: onTextChanged,
        cursorColor: Colors.blue,
        obscureText: secureText,
        keyboardType: inputType,
        validator: onValidator,
        style: const TextStyle(fontSize: 14.0),
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(8),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 13, color: Colors.grey),
          suffixIcon: iconSuffix ?? const SizedBox(),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            //borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red)),
        ),
      ),
    );
  }
}

