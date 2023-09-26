import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/modules/test/provider/test_provider.dart';

class TestView extends ConsumerWidget{
  const TestView({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final testProvider = ref.watch(testFutureProvider);
    final testFu = ref.watch(testFutureProvider);
    return Scaffold(
      body: Text("Test"),
    );
  }

}
