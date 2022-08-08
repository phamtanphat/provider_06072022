import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class DemoProviderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Provider"),
      ),
      body: Container(
        child: Center(
          child: OngBa(
            child: ChaMe(
              child: ConCai(),
            ),
          )
        ),
      ),
    );
  }
}

class OngBa extends StatelessWidget {
  Widget child;
  String value = "Data from OngBa";

  OngBa({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Ông Bà Widget"),
        Provider.value(
            value: value,
            child: child,
        )
      ],
    );
  }
}

class ChaMe extends StatelessWidget {
  Widget child;

  ChaMe({required this.child});

  @override
  Widget build(BuildContext context) {
    String value = Provider.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cha Mẹ Widget: "),
            Text(value)
          ],
        ),
        child
      ],
    );
  }
}

class ConCai extends StatelessWidget {
  ConCai();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Con cái Widget: "),
            Consumer<String>(
                builder: (context, text, child) {
                  return Text(text);
                },
            )
          ],
        )
      ],
    );
  }
}