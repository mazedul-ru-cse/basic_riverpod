
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/modules/home/view_model/home_state.dart';
class HomeNotifier extends StateNotifier<HomeState> {

  HomeNotifier() : super(HomeState(allName: ["Mazedul"]));

  void add(String newName){
    state = state.addName(newName: newName);
  }
  void delete(){
    state = state.deleteName();
  }
}