import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:knolink_web/env/const.dart';
import 'package:knolink_web/presentation/bloc/sign/sign_bloc.dart';
import 'package:knolink_web/presentation/bloc/signcontent/signcontent_bloc.dart';
import 'package:knolink_web/presentation/screens/Login/Widgets/LoadingWidget.dart';
import 'package:knolink_web/presentation/screens/Login/screens/CodeInput.dart';
import 'package:checkmark/checkmark.dart';

class SignWrapper extends StatefulWidget {
  const SignWrapper({Key? key}) : super(key: key);

  @override
  State<SignWrapper> createState() => _SignWrapperState();
}

class _SignWrapperState extends State<SignWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocBuilder<SignBloc, SignState>(
      builder: (context, state) => Scaffold(
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff000000),
                Color(0xff111111),
                Color(0xff111111),
              ],
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: screenSize.width * 0.05,
                height: screenSize.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        decoration: BoxDecoration(
                          color: state is SignViaGoogleState
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(16.0),
                          onPressed: () {
                            BlocProvider.of<SignBloc>(context)
                                .add(SignViaGoogleEvent());
                          },
                          icon: ImageIcon(
                            const AssetImage("assets/img/google.png"),
                            size: 24,
                            color: state is SignViaGoogleState
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        decoration: BoxDecoration(
                          color: state is SignInitialState
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(16.0),
                          onPressed: () {
                            BlocProvider.of<SignBloc>(context)
                                .add(SignInitialEvent());
                          },
                          icon: ImageIcon(
                            const AssetImage("assets/img/telegram.png"),
                            size: 24,
                            color: state is SignInitialState
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: AnimatedContainer(
                        curve: Curves.fastOutSlowIn,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        decoration: BoxDecoration(
                          color: state is SignViaEmailState
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(16.0),
                          onPressed: () {
                            BlocProvider.of<SignBloc>(context)
                                .add(SignViaEmailEvent());
                          },
                          icon: Icon(
                            Icons.mail_outline_sharp,
                            color: state is SignViaEmailState
                                ? Colors.black
                                : Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (state is SignInitialState)
                BlocBuilder<SignContentBloc, SignContentState>(
                    builder: (context, state) {
                  if (state is SignConInitialState) {
                    return DelayedWidget(
                      delayDuration: const Duration(milliseconds: 50),
                      animationDuration: const Duration(milliseconds: 100),
                      animation: DelayedAnimations.SLIDE_FROM_LEFT,
                      child: SizedBox(
                        width: screenSize.width * 0.95,
                        child: Center(
                          child: AnimatedContainer(
                            curve: Curves.fastOutSlowIn,
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                            decoration: BoxDecoration(
                              color: state is SignGoToTelegramPressedState
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            child: AnimatedCrossFade(
                              duration: const Duration(
                                milliseconds: 250,
                              ),
                              crossFadeState:
                                  state is SignGoToTelegramPressedState
                                      ? CrossFadeState.showSecond
                                      : CrossFadeState.showFirst,
                              secondChild: TextButton(
                                style: TextButton.styleFrom(
                                  animationDuration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  splashFactory: NoSplash.splashFactory,
                                  surfaceTintColor: Colors.transparent,
                                  elevation: 0.0,
                                  shadowColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  primary: Colors.transparent,
                                  onSurface: Colors.transparent,
                                  padding: const EdgeInsets.all(24.0),
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<SignContentBloc>(context)
                                      .add(SignGoToTelegramPressed());
                                },
                                child: Text(
                                  "Вы перенаправлены",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontFamily: raleway,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              firstChild: TextButton(
                                style: TextButton.styleFrom(
                                  animationDuration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  splashFactory: NoSplash.splashFactory,
                                  surfaceTintColor: Colors.transparent,
                                  elevation: 0.0,
                                  shadowColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  primary: Colors.transparent,
                                  onSurface: Colors.transparent,
                                  padding: const EdgeInsets.all(24.0),
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<SignContentBloc>(context)
                                      .add(SignGoToTelegramPressed());
                                },
                                child: Text(
                                  "Перейти в телеграм",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontFamily: raleway,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else if (state is SignCodeAwaiting) {
                    return DelayedWidget(
                      delayDuration: const Duration(milliseconds: 50),
                      animationDuration: const Duration(milliseconds: 100),
                      animation: DelayedAnimations.SLIDE_FROM_LEFT,
                      child: const CodeInput(),
                    );
                  }
                  return const LoadingWidget();
                }),
              if (state is SignViaGoogleState)
                DelayedWidget(
                  delayDuration: const Duration(milliseconds: 50),
                  animationDuration: const Duration(milliseconds: 100),
                  animation: DelayedAnimations.SLIDE_FROM_LEFT,
                  child: SizedBox(
                    width: screenSize.width * 0.95,
                    child: Center(
                      child: Text(
                        "Скоро",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: raleway,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              if (state is SignViaEmailState)
                DelayedWidget(
                  delayDuration: const Duration(milliseconds: 50),
                  animationDuration: const Duration(milliseconds: 100),
                  animation: DelayedAnimations.SLIDE_FROM_LEFT,
                  child: SizedBox(
                    width: screenSize.width * 0.95,
                    child: Center(
                      child: Text(
                        "Скоро",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: raleway,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
