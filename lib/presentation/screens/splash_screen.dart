import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:knolink_web/presentation/bloc/continuetoapp_button/cta_bloc.dart';
import '../bloc/auth/auth_bloc.dart';
import 'Login/Widgets/ContinueToApp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocBuilder<AuthBloc, AuthState>(
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
          child: DelayedWidget(
            delayDuration: const Duration(milliseconds: 200),
            animationDuration: const Duration(milliseconds: 1000),
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    curve: Curves.bounceOut,
                    duration: const Duration(milliseconds: 500),
                    width: state is AuthLoading ? 256 : 212,
                    height: state is AuthLoading ? 256 : 212,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/img/knlk.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.1),
                  AnimatedCrossFade(
                    duration: const Duration(milliseconds: 500),
                    firstCurve: Curves.easeInOut,
                    secondCurve: Curves.elasticIn,
                    firstChild: const SpinKitRotatingPlain(
                      size: 100,
                      color: Colors.white,
                    ),
                    secondChild: AnimatedOpacity(
                      opacity: state is AuthLoading ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 1000),
                      child: BlocProvider<CtaBloc>(
                        create: (context) => CtaBloc()..add(CtaInitialEvent()),
                        child: const ContinueToAppButton(),
                      ),
                    ),
                    crossFadeState: state is AuthLoading
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
