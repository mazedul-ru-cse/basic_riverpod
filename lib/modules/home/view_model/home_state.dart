
class HomeState{

  final List<String> allName;

  HomeState({required this.allName});

  HomeState addName({required String newName}){
    allName.add(newName);
    return HomeState(allName: allName);

  }

  HomeState deleteName(){
    allName.removeLast();
    return HomeState(allName: allName);
  }
}