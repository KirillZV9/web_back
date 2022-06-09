part of 'auth_bloc.dart';

abstract class AuthState {}

/// user opens site without any info about him
class AuthUnauthorized extends AuthState {}

class AuthAuthorized extends AuthState {
  List<dynamic> users;
  AuthAuthorized({required this.users});
}

class AuthLoading extends AuthState {}

class AuthError extends AuthState {}
