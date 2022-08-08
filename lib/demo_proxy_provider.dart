import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Model
class CounterModel{
  int _count = 1;

  int get count => _count;
}

class CounterService{
  CounterModel _counterApi;

  CounterService({required CounterModel api}) : _counterApi = api;

  CounterModel get counterApi => _counterApi;
}

class CounterController {
  CounterService _counterService;

  CounterController({required CounterService counterService}) : _counterService = counterService;

  CounterService get counterService => _counterService;
}

class DemoProxyProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create:(_) => CounterModel(),
        ),
        ProxyProvider<CounterModel,CounterService>(
            update: (context , counterApi , previos) => CounterService(api: counterApi)
        ),
        ProxyProvider<CounterService,CounterController>(
            update: (context , counterService , previos) => CounterController(counterService: counterService)
        ),
      ],
      child: TestWidget(),
    );
  }
}


class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(context.watch<CounterController>().counterService.counterApi.count.toString());
  }
}