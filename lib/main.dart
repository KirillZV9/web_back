import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knolink_web/data/repositories/user_repository.dart';
import 'package:knolink_web/presentation/bloc/auth/auth_bloc.dart';
import 'package:knolink_web/presentation/bloc/continuetoapp_button/cta_bloc.dart';
import 'package:knolink_web/presentation/bloc/loggedDelegate/logged_delegate_bloc.dart';
import 'package:knolink_web/presentation/bloc/sign/sign_bloc.dart';
import 'package:knolink_web/presentation/screens/splash_screen.dart';

import 'presentation/bloc/signcontent/signcontent_bloc.dart';
import 'presentation/screens/Login/SignWrapper.dart';

void main() => BlocOverrides.runZoned(
      () => runApp(const Root()),
      blocObserver: LoggingBlocDelegate(),
    );

RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              AuthBloc(userRepo: UserRepository())..add(AppStarted()),
        ),
        BlocProvider<SignBloc>(
          create: (context) => SignBloc()..add(SignInitialEvent()),
        ),
        BlocProvider<SignContentBloc>(
          create: (context) => SignContentBloc()..add(SignConInitialEvent()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [
          routeObserver,
        ],
        routes: {
          '/sign': (context) => const SignWrapper(),
        },
        home: const SplashScreen(),
      ),
    );
  }
}
