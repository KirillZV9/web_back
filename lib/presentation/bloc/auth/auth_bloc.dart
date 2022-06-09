import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/user.dart';
import '../../../data/repositories/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  UserRepository userRepo = UserRepository();

  AuthBloc({required this.userRepo}) : super(AuthLoading()) {
    on<AppStarted>(
      (event, emit) async {
        emit(AuthLoading());
        await Future.delayed(const Duration(milliseconds: 500), () {
          emit(AuthUnauthorized());
        });
      },
    );
  }
}
