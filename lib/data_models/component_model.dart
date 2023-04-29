import 'package:flutter/material.dart';

enum ComponentTypes { breaker, sdsd }

class Component {
  final int typeID;
  final int rowflex;
  final Widget componentWidget;

  Component({
    required this.typeID,
    required this.rowflex,
    required this.componentWidget,
  });
}

class RowData {
  final int rowId;
  final int rowflex;
  final List<Component> components;

  RowData({
    required this.rowId,
    required this.rowflex,
    required this.components,
  });
}
