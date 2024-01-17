import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rust_complete/app_events.dart';
import 'package:flutter_rust_complete/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitState()) {
    print("app bloc");

    on<Increment>((event, emit) {
      print("I am incrementing");
      emit(AppStates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      print("I am decrementing");
      emit(AppStates(counter: state.counter - 1));
    });
  }
}
