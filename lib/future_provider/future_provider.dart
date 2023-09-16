import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 final myNameProvider = FutureProvider<String>((ref)=> fetchMyName());
 //final myNameProvider = FutureProvider.autoDispose<String>((ref)=> fetchMyName());

 Future<String> fetchMyName()async{
   return await Future.delayed(const Duration(seconds: 4),()=> "M A Mazedul Islam");
 }

class FutureProviderExample extends ConsumerWidget {
  const FutureProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("FutureProvider"),),

      body: ref.watch(myNameProvider).when(
          data: (data)=> Text(data),
          error: (er,tr)=> Center(child: Text(tr.toString())),
          loading:()=> const Center(child: CircularProgressIndicator())
      ),
    );
  }
}