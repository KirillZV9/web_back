import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';

import '../../../../Env/const.dart';

class LoginButtons extends StatefulWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  State<LoginButtons> createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool _isHovered = false;
    return Center(
      child: DelayedWidget(
        delayDuration: const Duration(milliseconds: 200),
        animationDuration: const Duration(milliseconds: 500),
        animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
        child: SizedBox(
          width: screenSize.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StatefulBuilder(
                    builder: (context, setState) => Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: OutlinedButton(
                        onHover: (bool _isOn) {
                          if (_isOn) {
                            setState(() {
                              _isHovered = true;
                            });
                          } else {
                            setState(() {
                              _isHovered = false;
                            });
                          }
                        },
                        onPressed: () async {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              elevation: 10.0,
                              actionsAlignment: MainAxisAlignment.start,
                              insetPadding: EdgeInsets.zero,
                              contentPadding: EdgeInsets.zero,
                              actions: [
                                IconButton(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    25.0,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              title: Text(
                                "Зачем ты сюда нажал?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: secondPrimaryFontFamily,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "Google",
                          style: TextStyle(
                            height: 1.2,
                            color: _isHovered ? Colors.black : Colors.white,
                            fontFamily: raleway,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor:
                              _isHovered ? Colors.white : Colors.transparent,
                          animationDuration: const Duration(
                            milliseconds: 200,
                          ),
                          splashFactory: NoSplash.splashFactory,
                          padding: const EdgeInsets.all(16.0),
                          shape: welcomeButtonShape,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.015,
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () async {
                          /////// LAUNCHING BOT URL
                          // await launchUrl(
                          //   Uri.parse(TELEGRAM_BOT_LINK),
                          //   webOnlyWindowName: 'Login via Telegram',
                          //   webViewConfiguration:
                          //       const WebViewConfiguration(),
                          // );
                          ///////
                          /////// PUSHING TO NEXT SCREEN
                          Navigator.pushNamed(
                            context,
                            '/confirmCode',
                          );
                          ///////
                        },
                        onHover: (bool _isOn) {
                          if (_isOn) {
                            setState(
                              () {
                                _isHovered = true;
                              },
                            );
                          } else {
                            setState(
                              () {
                                _isHovered = false;
                              },
                            );
                          }
                        },
                        child: Text(
                          "TELEGRAM",
                          style: TextStyle(
                            height: 1.2,
                            color: _isHovered ? Colors.black : Colors.white,
                            fontFamily: secondPrimaryFontFamily,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor:
                              _isHovered ? Colors.white : Colors.transparent,
                          animationDuration: const Duration(
                            milliseconds: 200,
                          ),
                          splashFactory: NoSplash.splashFactory,
                          padding: const EdgeInsets.all(16.0),
                          // side: const BorderSide(
                          //   color: Colors.white,
                          //   width: 2.0,
                          // ),
                          // shape: welcomeButtonShape,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.015,
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: OutlinedButton(
                        onHover: (bool _isOn) {
                          if (_isOn) {
                            setState(() {
                              _isHovered = true;
                            });
                          } else {
                            setState(() {
                              _isHovered = false;
                            });
                          }
                        },
                        onPressed: () async {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              elevation: 10.0,
                              actionsAlignment: MainAxisAlignment.end,
                              insetPadding: EdgeInsets.zero,
                              contentPadding: EdgeInsets.zero,
                              actions: [
                                IconButton(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    25.0,
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.white,
                              title: Text(
                                "А сюда зачем нажал?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: secondPrimaryFontFamily,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          "E-mail",
                          style: TextStyle(
                            height: 1.2,
                            color: _isHovered ? Colors.black : Colors.white,
                            fontFamily: secondPrimaryFontFamily,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor:
                              _isHovered ? Colors.white : Colors.transparent,
                          animationDuration: const Duration(
                            milliseconds: 200,
                          ),
                          splashFactory: NoSplash.splashFactory,
                          padding: const EdgeInsets.all(16.0),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          shape: welcomeButtonShape,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
