import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myNameProvider = Provider<String>((ref){
  return "This is Simple provider";
});


class SimpleProvider extends ConsumerWidget {
  const SimpleProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){

    String data = ref.read<String>(myNameProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Simple Provider"),),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
