import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter Value: ${counterProvider.counter}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => counterProvider.increment(),
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => counterProvider.decrement(),
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
