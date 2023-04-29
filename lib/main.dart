import 'package:flutter/material.dart';
import 'package:flutter_app_from_scheme/data_models/app_model.dart';
import 'package:flutter_app_from_scheme/fake_data.dart';
import 'package:flutter_app_from_scheme/services/init_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  MyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter special GUID'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CreatedApp(app: App.fromData(fakeAllData))),
                      (route) => false);
                },
                child: const Text('Build'))
          ],
        ),
      ),
    );
  }
}
