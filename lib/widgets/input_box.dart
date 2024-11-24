import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String label;
  final onchanged;
  const InputBox({
    super.key,
    required this.label,
    this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            border: Border.all(
              color: Colors.blue,
            )),
        child: TextFormField(
          style: customTextStyle(),
          decoration: InputDecoration(
              isCollapsed: true,
              border: InputBorder.none,
              hintText: label,
              hintStyle: customTextStyle()),
          onChanged: onchanged,
        ),
      ),
    );
  }

  TextStyle customTextStyle() {
    return const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.blue,
      overflow: TextOverflow.fade,
    );
  }
}
