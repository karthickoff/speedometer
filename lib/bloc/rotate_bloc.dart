import 'package:bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';

part 'rotate_event.dart';
part 'rotate_state.dart';

class RotateBloc extends Bloc<RotateEvent, RotateState> {
  RotateBloc() : super(RotateInitial()) {
    // emit(RotateInitial());
    // on<RotateEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    on<UpdateRotateEvent>((event, emit) {
      emit(RotateInitial1());
      print(event);
      print("inside bloc data is gng to emitted");
      print(event.data);

      emit(InitalRotateState(event.data));
      print("after emit");
      print(state);
      // if (state is RotateState) {}
    });
  }
}
