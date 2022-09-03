import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_rate_rounded, size: 22, color: Colors.yellow.shade700,),
        Icon(Icons.star_rate_rounded, size: 22, color: Colors.yellow.shade700,),
        Icon(Icons.star_rate_rounded, size: 22, color: Colors.yellow.shade700,),
        Icon(Icons.star_half_rounded, size: 22, color: Colors.yellow.shade700,),
        Icon(Icons.star_rate_rounded, size: 22, color: Colors.grey.shade300),
      ],
    );
  }
}