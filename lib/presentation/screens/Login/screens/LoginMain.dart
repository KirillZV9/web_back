import 'package:flutter/material.dart';
import 'package:knolink_web/main.dart';
import 'package:knolink_web/Env/const.dart';
import 'package:knolink_web/Env/env.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({Key? key}) : super(key: key);

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> with RouteAware {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool _isHovered = false;
    return Scaffold(
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    final route = ModalRoute.of(context)!.settings.name;
    print('didPush route: $route');
  }

  @override
  void didPopNext() {
    final route = ModalRoute.of(context)!.settings.name;
    print('didPopNext route: $route');
  }

  @override
  void didPushNext() {
    final route = ModalRoute.of(context)!.settings.name;
    print('didPushNext route: $route');
  }

  @override
  void didPop() {
    final route = ModalRoute.of(context)!.settings.name;
    print('didPop route: $route');
  }
}
