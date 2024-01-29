part of 'rotate_bloc.dart';

@immutable
sealed class RotateEvent {}

class UpdateRotateEvent extends RotateEvent {
  int data;
  UpdateRotateEvent(this.data);
}
