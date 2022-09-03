import 'package:flutter/material.dart';
class FieldContainer extends StatelessWidget {
  const FieldContainer({Key? key, required this.controller, required this.hint, this.lines, this.height}) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final int? lines;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        margin: const EdgeInsets.only(right: 10, left: 10, top: 25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.1),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: TextField(
          maxLines: lines,
          onChanged: (x){
            controller.text = x;
          },
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),
          ),
        )
    );
  }
}
