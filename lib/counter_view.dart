import 'package:flutter/material.dart';
import 'package:flutter_service/counter_viewmodel.dart';
import 'package:provider_architecture/provider_architecture.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<CounterViewModel>.withConsumer(
      viewModel: CounterViewModel(),
      onModelReady: (model) => model.loadData() ,
      builder: (context,model ,chile ) => Scaffold(
        appBar: AppBar(
          title: Text('Service'),
        ),
        body: Center(
          child: Text('${model.counter}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            model.increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),),
      ),
      
    );
  }
}