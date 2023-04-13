import 'package:flutter/material.dart';

class Break extends StatelessWidget {
  final int size;
  final Color color;
  const Break({super.key, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.toDouble(),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  factory Break.fromData(data) {
    return Break(
      size: data["size"],
      color: data["color"],
    );
  }
}
