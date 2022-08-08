import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  increment() {
    _count++;
    print(_count);
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class DemoChangeNotifier extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Change Notifier"),
      ),
      body: ChangeNotifierProvider(
        lazy: true,
        create: (context) => Counter(),
        child: TestWidget(),
      ),
    );
  }
}

class TestWidget extends StatefulWidget{

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of(context);
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(counter.count.toString()),
            ElevatedButton(
                onPressed: (){
                  counter.increment();
                },
                child: Text("Increment")
            )
          ],
        ),
      ),
    );
  }
}