import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knolink_web/env/const.dart';
import 'package:knolink_web/presentation/bloc/continuetoapp_button/cta_bloc.dart';
import 'package:knolink_web/presentation/screens/Login/SignWrapper.dart';

class ContinueToAppButton extends StatelessWidget {
  const ContinueToAppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BlocBuilder<CtaBloc, CtaState>(
      builder: (context, state) => Stack(
        alignment: Alignment.center,
        children: [
          AnimatedContainer(
            width: screenSize.width * 0.25,
            height: state is CtaInitialState ? 0.0 : screenSize.height * 0.08,
            curve: Curves.fastOutSlowIn,
            duration: const Duration(
              milliseconds: 250,
            ),
            decoration: BoxDecoration(
              color:
                  state is CtaInitialState ? Colors.transparent : Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: screenSize.width * 0.25,
              height: screenSize.height * 0.08,
              child: TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                  surfaceTintColor: Colors.transparent,
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  padding: const EdgeInsets.all(24.0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: state is CtaInitialState
                          ? Colors.white
                          : Colors.transparent,
                      width: state is CtaInitialState ? 0.5 : 0.0,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(0.0),
                    ),
                  ),
                ),
                onHover: (bool onHover) {
                  if (state is CtaInitialState) {
                    BlocProvider.of<CtaBloc>(context).add(CtaHovered());
                  } else {
                    BlocProvider.of<CtaBloc>(context).add(CtaInitialEvent());
                  }
                },
                onPressed: () {
                  Navigator.of(context).pushNamed('/sign');
                },
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(
                    milliseconds: 250,
                  ),
                  style: TextStyle(
                    color:
                        state is CtaInitialState ? Colors.white : Colors.black,
                    fontSize: 24,
                    fontFamily: raleway,
                    fontWeight: FontWeight.w700,
                  ),
                  child: const Text(
                    "Добро пожаловать к нам",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
