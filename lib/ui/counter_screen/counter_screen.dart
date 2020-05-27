import 'package:flutter/material.dart';
import 'package:mvvm_architecture/ui/counter_screen/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("CounterLoco"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You've pressed the button ${model.counter} times."),
              Text(
                "POSTA: ${model.counter}",
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => model.increment(),
          elevation: 10,
          tooltip: "Aumentar!",
          child: Icon(Icons.add_comment),
        ),
      ),
    );
  }
}
