import 'package:flutter/material.dart';
import 'package:provider_06072022/demo_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/provider_basic" : (context) => DemoProviderWidget()
      },
      initialRoute:  "/provider_basic",
    );
  }
}
