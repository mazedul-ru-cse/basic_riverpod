import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/modules/test/view_model/test_notifier.dart';

final testProvider = StateNotifierProvider((ref) => TestNotifier());
final testFutureProvider = FutureProvider<String>((ref){
  print("initial");
  return "Test";
});