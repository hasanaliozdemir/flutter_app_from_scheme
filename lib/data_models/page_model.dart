import 'package:flutter/material.dart';
import 'package:flutter_app_from_scheme/data_models/component_model.dart';

class AppPage {
  final String name;
  final String iconUrl;
  final bool inMenu;
  final List<RowData> rows;
  final Map<String, dynamic> header;

  AppPage({
    required this.name,
    required this.header,
    required this.iconUrl,
    required this.inMenu,
    required this.rows,
  });

  static returnAsWidget(AppPage pageData, BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: List.generate(pageData.rows.length, (index) {
              var row = pageData.rows[index];
              return Expanded(
                flex: row.rowflex,
                child: Row(
                  children: List.generate(row.components.length, (index) {
                    var component = row.components[index];
                    return Expanded(
                      flex: component.rowflex,
                      child: component.componentWidget,
                    );
                  }),
                ),
              );
            }),
          ),
        )
      ],
    ));
  }
}
