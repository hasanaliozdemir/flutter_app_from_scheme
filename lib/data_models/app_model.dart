import 'package:flutter_app_from_scheme/data_models/component_model.dart';
import 'package:flutter_app_from_scheme/data_models/page_model.dart';
import 'package:flutter_app_from_scheme/services/widget_service.dart';

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
            typeID: element['TypeID'],
            rowflex: element['rowFlex'],
            componentWidget: WidgetService.returnWidgetFromID(element)));
      }
      return components;
    }

    List<RowData> rowListGenerator(List rowsRaw) {
      List<RowData> rows = [];
      for (var element in rowsRaw) {
        rows.add(
          RowData(
            rowId: element['row'],
            rowflex: element['rowFlex'],
            components: componentListGenerator(element['components']),
          ),
        );
      }
      return rows;
    }

    return App(
        footer: data['footer'],
        background: data['background'],
        backgroundImage: data['background_image'],
        pages: List.generate(pagesRaw.length, (index) {
          var page = pagesRaw[index];
          return AppPage(
              name: page['name'],
              header: page['header'] as Map<String, dynamic>,
              iconUrl: page['icon'],
              inMenu: page['inMenu'],
              rows: rowListGenerator(page['rows'] as List));
        }));
  }
}
