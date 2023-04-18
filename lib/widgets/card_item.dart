import 'package:flutter/material.dart';
import 'package:flutter_app_from_scheme/utils.dart';

class CardItem extends StatelessWidget {
  final int rowCount;
  final Icon icon;
  final String header;
  final String content;
  const CardItem(
      {super.key,
      required this.rowCount,
      required this.icon,
      required this.header,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height * fixedRowMultiplier * rowCount,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          icon,
          Text(header),
          Text(content),
        ],
      ),
    );
  }
}
