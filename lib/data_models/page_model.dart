import 'package:flutter_app_from_scheme/data_models/component_model.dart';

class AppPage {
  final int id;
  final String name;
  final String iconUrl;
  final bool inMenu;
  final List<Component> components;

  AppPage({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.inMenu,
    required this.components,
  });
}
