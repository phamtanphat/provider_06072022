import 'package:flutter/material.dart';
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

  OngBa({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Ông Bà Widget"),
        child
      ],
    );
  }
}

class ChaMe extends StatelessWidget {
  Widget child;

  ChaMe({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cha Mẹ Widget: "),
            Text("Value")
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
            Text("Value")
          ],
        )
      ],
    );
  }
}