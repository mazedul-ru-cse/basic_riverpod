import 'package:basic_riverpod/future_provider/future_provider.dart';
import 'package:basic_riverpod/simple_provider/smple_provider.dart';
import 'package:basic_riverpod/state_provider/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Riverpod"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>const SimpleProvider())),
                child: Text("Only read")
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>const FutureProviderExample())),
                child: Text("Future Provider")
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>const StateProviderExample())),
                child: Text("StateProvider")
            ),
          ],
        ),
      ),
    );
  }
}

