import 'package:flutter/material.dart';
import 'package:flutter_app_from_scheme/data_models/app_model.dart';
import 'package:flutter_app_from_scheme/data_models/page_model.dart';
import 'package:flutter_app_from_scheme/extensions.dart';

class CreatedApp extends StatefulWidget {
  final App app;
  const CreatedApp({super.key, required this.app});

  @override
  State<CreatedApp> createState() => _CreatedAppState();
}

class _CreatedAppState extends State<CreatedApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          if (widget.app.backgroundImage.isNotEmpty)
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.app.backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          PageView.builder(
            itemCount: 1,
            itemBuilder: ((context, index) {
              return AppPage.returnAsWidget(widget.app.pages[index], context);
            }),
          ),
        ],
      ),
      backgroundColor: widget.app.background.toColor(),
    );
  }
}
