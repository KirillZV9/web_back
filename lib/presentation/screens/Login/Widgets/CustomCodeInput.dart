import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../Env/const.dart';

class CustomCodeInput extends StatelessWidget {
  const CustomCodeInput({
    Key? key,
    required this.screenSize,
    required List<TextEditingController> controllers,
    required MaskTextInputFormatter formatter,
    required this.inputNumber,
    required List<FocusNode> nodes,
  })  : _controllers = controllers,
        _formatter = formatter,
        _nodes = nodes,
        super(key: key);

  final Size screenSize;
  final int inputNumber;
  final List<TextEditingController> _controllers;
  final MaskTextInputFormatter _formatter;
  final List<FocusNode> _nodes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 0.021 * 2,
      height: screenSize.height * 0.046 * 2,
      child: TextField(
        onChanged: (value) {
          if (_formatter.isFill()) {
            if (inputNumber == 5) {
              bool _codeIsTrue = false;
              if (!_codeIsTrue) {
                for (var i = 0; i < _controllers.length; i++) {
                  _controllers[i].clear();
                  FocusScope.of(context).requestFocus(_nodes[0]);

                  /// TODO: IMPLEMENT SNACK TO REFILL CODE
                }
              }
            } else {
              FocusScope.of(context).requestFocus(_nodes[inputNumber + 1]);
            }
          }
        },
        showCursor: false,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontFamily: primaryFontFamily,
          fontWeight: FontWeight.w500,
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
        focusNode: _nodes[inputNumber],
        controller: _controllers[inputNumber],
        inputFormatters: [
          _formatter,
        ],
        autofocus: true,
      ),
    );
  }
}
