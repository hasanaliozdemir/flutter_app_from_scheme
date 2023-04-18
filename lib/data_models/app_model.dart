import 'package:flutter_app_from_scheme/data_models/component_model.dart';
import 'package:flutter_app_from_scheme/data_models/page_model.dart';

class App {
  final String footer;
  final String background;
  final String backgroundImage;
  final List<AppPage> pages;

  App({
    required this.footer,
    required this.background,
    required this.backgroundImage,
    required this.pages,
  });

  factory App.fromData(Map<String, dynamic> data) {
    var pagesRaw = data['pages'] as List;

    List<Component> componentListGenerator(List componentsRaw) {
      List<Component> components = [];
      for (var element in componentsRaw) {
        components.add(Component(
          typeID: element['typeId'],
          rowflex: element['rowFlex'],
        ));
      }
      return components;
    }

    return App(
        footer: data['footer'],
        background: data['background'],
        backgroundImage: data['backgroundImage'],
        pages: List.generate(pagesRaw.length, (index) {
          var page = pagesRaw[index];
          return AppPage(
              id: page['id'],
              name: page['name'],
              iconUrl: page['icon'],
              inMenu: page['inMenu'],
              components: componentListGenerator(page['components'] as List));
        }));
  }
}
