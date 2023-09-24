import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/modules/home/view_model/home_notifier.dart';
import 'package:mvvm_architecture/modules/home/view_model/home_state.dart';

final homeProvider = StateNotifierProvider<HomeNotifier,HomeState>((ref) => HomeNotifier());