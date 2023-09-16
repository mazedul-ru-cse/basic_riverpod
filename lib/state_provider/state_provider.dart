import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterStateProvider = StateProvider<int>((ref) => 0);


class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({super.key});

  @override
  Widget build(BuildContext context,ref){
  return Scaffold(
    appBar: AppBar(title: Text("StateProvder"),),
    body: Consumer(
      builder: (context,ref,child) {
        int data = ref.watch(counterStateProvider);
        return Center(child: Text(data.toString(),strutStyle: StrutStyle(fontSize: 15),));
      },
    ),
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(onPressed: ()=>ref.read(counterStateProvider.state).state--,child: Icon(Icons.remove,color: Colors.white,),backgroundColor: Colors.red,),
          FloatingActionButton(onPressed: ()=>ref.read(counterStateProvider.state).state++,child: Icon(Icons.add,color: Colors.white,),backgroundColor: Colors.blue,),
        ],
      ),
    ),
  );
  }
}
