part of 'sign_bloc.dart';

abstract class SignEvent {}

class SignInitialEvent extends SignEvent {}

class SignViaGoogleEvent extends SignEvent {}

class SignViaEmailEvent extends SignEvent {}
