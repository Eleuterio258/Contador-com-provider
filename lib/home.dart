import 'package:bloc/in_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador com provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.watch<InCounter>().number.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<InCounter>().decremement();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<InCounter>().incmement();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 120,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<InCounter>().clean();
            },
            child: Icon(Icons.clear),
          ),
        ],
      ),
    );
  }
}
