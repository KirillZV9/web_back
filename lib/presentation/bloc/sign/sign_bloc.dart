import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_event.dart';
part 'sign_state.dart';

class SignBloc extends Bloc<SignEvent, SignState> {
  SignBloc() : super(SignInitialState()) {
    on<SignInitialEvent>(
      (event, emit) async {
        emit(SignInitialState());
      },
    );
    on<SignViaGoogleEvent>(
      (event, emit) async {
        emit(SignViaGoogleState());
      },
    );
    on<SignViaEmailEvent>(
      (event, emit) async {
        emit(SignViaEmailState());
      },
    );
  }
}
