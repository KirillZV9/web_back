import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:knolink_web/Env/const.dart';
import 'package:audioplayers/web/audioplayers_web.dart';
import '../../../../main.dart';

class RoleInput extends StatefulWidget {
  const RoleInput({Key? key}) : super(key: key);

  @override
  State<RoleInput> createState() => _RoleInputState();
}

class _RoleInputState extends State<RoleInput> with RouteAware {
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  Widget build(BuildContext context) {
    // PLAYING AN AUDIO ON PAGE LOADING
    AudioPlayer _player = AudioPlayer(
      mode: PlayerMode.LOW_LATENCY,
    );
    _player.play('assets/audio/stuk.mp3', isLocal: true);
    //

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        leading: Icon(Icons.abc),
      ),
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
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Text(
              "Кто там?",
              style: TextStyle(
                color: Colors.white,
                fontFamily: primaryFontFamily,
                fontWeight: FontWeight.w500,
                fontSize: 36,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Заказчик"),
                    ),
                  ),
                  // Flexible(
                  //   fit: FlexFit.tight,
                  // ),
                ],
              ),
            ),
          ],
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
