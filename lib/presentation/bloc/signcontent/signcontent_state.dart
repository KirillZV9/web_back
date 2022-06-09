part of 'signcontent_bloc.dart';

abstract class SignContentState {}

class SignConInitialState extends SignContentState {}

class SignGoToTelegramPressedState extends SignContentState {}

class SignCodeAwaiting extends SignContentState {}
