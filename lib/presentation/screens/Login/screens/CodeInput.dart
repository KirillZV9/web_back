import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:knolink_web/env/const.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../main.dart';

class CodeInput extends StatefulWidget {
  const CodeInput({Key? key}) : super(key: key);

  @override
  State<CodeInput> createState() => _CodeInputState();
}

class _CodeInputState extends State<CodeInput> with RouteAware {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  Widget build(BuildContext context) {
    ////// TEXTFIELDS CONTROLLERS
    TextEditingController _firstField = TextEditingController();
    TextEditingController _secondField = TextEditingController();
    TextEditingController _thirdField = TextEditingController();
    TextEditingController _fourthField = TextEditingController();
    TextEditingController _fifthField = TextEditingController();
    TextEditingController _sixthfield = TextEditingController();

    ////// TEXTFIELDS NODES
    FocusNode _firstNode = FocusNode();
    FocusNode _secondNode = FocusNode();
    FocusNode _thirdNode = FocusNode();
    FocusNode _fourthNode = FocusNode();
    FocusNode _fifthNode = FocusNode();
    FocusNode _sixth = FocusNode();

    ////// TEXTFIELD FORMATTER
    MaskTextInputFormatter _formatter = MaskTextInputFormatter(
      mask: "#",
      filter: {
        '#': RegExp(r'^[0-9]+$'),
      },
      type: MaskAutoCompletionType.lazy,
    );
    MaskTextInputFormatter _secondF = MaskTextInputFormatter(
      mask: "#",
      filter: {
        '#': RegExp(r'^[0-9]+$'),
      },
      type: MaskAutoCompletionType.lazy,
    );
    MaskTextInputFormatter _thirdF = MaskTextInputFormatter(
      mask: "#",
      filter: {
        '#': RegExp(r'^[0-9]+$'),
      },
      type: MaskAutoCompletionType.lazy,
    );
    MaskTextInputFormatter _fourthF = MaskTextInputFormatter(
      mask: "#",
      filter: {
        '#': RegExp(r'^[0-9]+$'),
      },
      type: MaskAutoCompletionType.lazy,
    );
    MaskTextInputFormatter _fifthF = MaskTextInputFormatter(
      mask: "#",
      filter: {
        '#': RegExp(r'^[0-9]+$'),
      },
      type: MaskAutoCompletionType.lazy,
    );
    MaskTextInputFormatter _sixthF = MaskTextInputFormatter(
      mask: "#",
      filter: {
        '#': RegExp(r'^[0-9]+$'),
      },
      type: MaskAutoCompletionType.lazy,
    );
    Size screenSize = MediaQuery.of(context).size;
    bool _codeValid = true;

    void _clearFields() {
      _firstField.clear();
      _secondField.clear();
      _thirdField.clear();
      _fourthField.clear();
      _fifthField.clear();
      _sixthfield.clear();
    }

    return Center(
      child: SizedBox(
        width: screenSize.width * 0.95,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Введите код, полученный в приложении",
              style: TextStyle(
                color: Colors.white,
                fontFamily: raleway,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            StatefulBuilder(
              builder: (context, setState) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      SizedBox(
                        width: screenSize.width * 0.021 * 2,
                        height: screenSize.height * 0.046 * 2,
                        child: TextField(
                          autofocus: true,
                          onChanged: (value) {
                            if (_formatter.isFill()) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          showCursor: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: raleway,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: codeInputs,
                            errorBorder: codeInputs,
                            focusedBorder: codeInputs,
                            focusedErrorBorder: codeInputs,
                            enabledBorder: codeInputs,
                          ),
                          focusNode: _firstNode,
                          controller: _firstField,
                          inputFormatters: [
                            _formatter,
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.008 * 7),
                      SizedBox(
                        width: screenSize.width * 0.021 * 2,
                        height: screenSize.height * 0.046 * 2,
                        child: TextField(
                          onChanged: (value) {
                            if (_formatter.isFill()) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          showCursor: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: raleway,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: codeInputs,
                            errorBorder: codeInputs,
                            focusedBorder: codeInputs,
                            focusedErrorBorder: codeInputs,
                            enabledBorder: codeInputs,
                          ),
                          focusNode: _secondNode,
                          controller: _secondField,
                          inputFormatters: [
                            _secondF,
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.008 * 7),
                      SizedBox(
                        width: screenSize.width * 0.021 * 2,
                        height: screenSize.height * 0.046 * 2,
                        child: TextField(
                          onChanged: (value) {
                            if (_formatter.isFill()) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          showCursor: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: raleway,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: codeInputs,
                            errorBorder: codeInputs,
                            focusedBorder: codeInputs,
                            focusedErrorBorder: codeInputs,
                            enabledBorder: codeInputs,
                          ),
                          focusNode: _thirdNode,
                          controller: _thirdField,
                          inputFormatters: [
                            _thirdF,
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.008 * 7),
                      SizedBox(
                        width: screenSize.width * 0.021 * 2,
                        height: screenSize.height * 0.046 * 2,
                        child: TextField(
                          onChanged: (value) {
                            if (_formatter.isFill()) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          showCursor: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: raleway,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: codeInputs,
                            errorBorder: codeInputs,
                            focusedBorder: codeInputs,
                            focusedErrorBorder: codeInputs,
                            enabledBorder: codeInputs,
                          ),
                          focusNode: _fourthNode,
                          controller: _fourthField,
                          inputFormatters: [
                            _fourthF,
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.008 * 7),
                      SizedBox(
                        width: screenSize.width * 0.021 * 2,
                        height: screenSize.height * 0.046 * 2,
                        child: TextField(
                          onChanged: (value) {
                            if (_formatter.isFill()) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          showCursor: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: raleway,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: codeInputs,
                            errorBorder: codeInputs,
                            focusedBorder: codeInputs,
                            focusedErrorBorder: codeInputs,
                            enabledBorder: codeInputs,
                          ),
                          focusNode: _fifthNode,
                          controller: _fifthField,
                          inputFormatters: [
                            _fifthF,
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.008 * 7),
                      SizedBox(
                        width: screenSize.width * 0.021 * 2,
                        height: screenSize.height * 0.046 * 2,
                        child: TextField(
                          onChanged: (value) {
                            if (_sixthF.isFill()) {
                              String code = _firstField.text +
                                  _secondField.text +
                                  _thirdField.text +
                                  _fourthField.text +
                                  _fifthField.text +
                                  _sixthfield.text;
                              if (code == "111111") {
                                debugPrint("code is true");
                                setState(() => _codeValid = true);
                              } else {
                                _clearFields();
                                _firstNode.requestFocus();
                                setState(() {
                                  _codeValid = false;
                                });
                                debugPrint(_codeValid.toString());
                              }
                            }
                          },
                          showCursor: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: raleway,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: codeInputs,
                            errorBorder: codeInputs,
                            focusedBorder: codeInputs,
                            focusedErrorBorder: codeInputs,
                            enabledBorder: codeInputs,
                          ),
                          focusNode: _sixth,
                          controller: _sixthfield,
                          inputFormatters: [
                            _sixthF,
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  AnimatedOpacity(
                    opacity: _codeValid ? 0.0 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: Text(
                      'Неверно. Попробуй еще раз...',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: raleway,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
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
