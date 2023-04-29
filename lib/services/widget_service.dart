import 'package:flutter/material.dart';
import 'package:flutter_app_from_scheme/extensions.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WidgetService {
  static positionAlign(String position) {
    switch (position) {
      case 'right':
        return Alignment.centerRight;
      case 'left':
        return Alignment.centerRight;
      default:
        {
          return Alignment.center;
        }
    }
  }

  static actionFromType(String actionType, String action) {
    switch (actionType) {
      case 'href':
        print('open link');
        break;
      case 'route':
        print('navigate');
        break;
      default:
    }
  }

  static returnWidgetFromID(Map<String, dynamic> data) {
    print(data);
    switch (data['TypeID']) {
      case 0: // Text
        return Align(
          alignment: positionAlign(data['position']),
          child: Text(
            data['content'],
            style: TextStyle(color: data['color'].toString().toColor()),
          ),
        );
      case 1: // IMAGE
        return Container(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: positionAlign(data['position']),
            child: Image.network(data['link']),
          ),
        );
      case 2: // Button
        return Align(
          alignment: positionAlign(data['position']),
          child: ElevatedButton(
            onPressed: (() =>
                actionFromType(data['ActionType'], data['Action'])),
            child: Text(data['content']),
          ),
        );
      case 3: // IMG SLider
        return Container(
          color: Colors.red,
        );
      case 4: // MAP _ DONE
        return const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(41.1033032, 29.0266668),
                zoom: 16,
              ),
            ),
          ),
        );
      case 5: // SOCİALMEDİA
        return Container(
          color: Colors.deepPurple,
        );
      case 6: // CARD
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: positionAlign(data['position']),
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.network(
                          data['image'],
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(data['title']),
                  ),
                  Expanded(child: Text(data['description']))
                ],
              ),
            ),
          ),
        );
      case 7: // CARD SLİDER
        return Container(
          color: Colors.redAccent,
        );
      case 8: // HEADER
        return Container(
          color: Colors.tealAccent,
        );
      case 9: // BREAK
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: data['height'].toDouble(),
              color: Colors.black,
            ),
          ),
        );

      default:
        {
          return Container();
        }
    }
  }
}
