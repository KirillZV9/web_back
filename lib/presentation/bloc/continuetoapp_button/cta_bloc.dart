import 'package:flutter_bloc/flutter_bloc.dart';

part 'cta_event.dart';
part 'cta_state.dart';

class CtaBloc extends Bloc<CtaEvent, CtaState> {
  CtaBloc() : super(CtaInitialState()) {
    on<CtaInitialEvent>(
      (event, emit) {
        emit(CtaInitialState());
      },
    );
    on<CtaHovered>(
      (event, emit) {
        emit(CtaHoveredState());
      },
    );
  }
}
