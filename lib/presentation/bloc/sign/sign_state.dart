part of 'sign_bloc.dart';

abstract class SignState {}

class SignInitialState extends SignState {}

class SignViaGoogleState extends SignState {}

class SignViaEmailState extends SignState {}
