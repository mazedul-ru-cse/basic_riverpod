import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/modules/home/view_model/home_provider.dart';

class HomeView extends ConsumerWidget {
   HomeView({super.key});

  TextEditingController txtC = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final data = ref.watch(homeProvider);

    print("sdhf");

    return Scaffold(
      appBar: AppBar(title: Text("Home screen"),),
      body: Column(
       // padding: EdgeInsets.all(10),
        children: [

          TextField(
            controller: txtC,
            decoration: InputDecoration(
              hintText: "Enter name"
            ),
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: ()=> ref.read(homeProvider.notifier).add(txtC.text), child: Text("Add Name")),
              ElevatedButton(onPressed: ()=> ref.read(homeProvider.notifier).delete(), child: Text("Delete Name"))

            ],
          ),

          SizedBox(height: 20,),

          Consumer(builder: (c,r,ch){
            List<String>? data = r.watch(homeProvider.notifier).state.allName;

            return Text("${data.toString()}");
          })

        ],
      ),
    );
  }
}
