part of 'auth_bloc.dart';

abstract class AuthEvent {}

class AppStarted extends AuthEvent {}

class Logging extends AuthEvent {}

class LoggedIn extends AuthEvent {
  List<dynamic> users;
  LoggedIn({required this.users});
}

class LoggedOut extends AuthEvent {}

class UserDeleted extends AuthEvent {}
