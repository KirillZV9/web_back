import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knolink_web/env/env.dart';
import 'package:url_launcher/url_launcher.dart';

part 'signcontent_state.dart';
part 'signtcontent_event.dart';

class SignContentBloc extends Bloc<SignContentEvent, SignContentState> {
  SignContentBloc() : super(SignConInitialState()) {
    on<SignConInitialEvent>(
      (event, emit) {
        emit(SignConInitialState());
      },
    );
    on<SignGoToTelegramPressed>(
      (event, emit) async {
        emit(SignGoToTelegramPressedState());
        await launchUrl(Uri.parse(TELEGRAM_BOT_URL));
        emit(SignCodeAwaiting());
      },
    );
  }
}
