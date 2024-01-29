part of 'rotate_bloc.dart';

// @immutable
sealed class RotateState {}

final class RotateInitial extends RotateState {}

final class RotateInitial1 extends RotateState {}

final class InitalRotateState extends RotateState {
  int angleToRotate;
  InitalRotateState(this.angleToRotate);
}
