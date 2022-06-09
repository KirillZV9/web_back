part of 'signcontent_bloc.dart';

abstract class SignContentEvent {}

class SignConInitialEvent extends SignContentEvent {}

class SignGoToTelegramPressed extends SignContentEvent {}
