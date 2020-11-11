import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonState extends ChangeNotifier {
  Color _buttonOneColor = Colors.white;
  Color _buttonTwoColor = Colors.white;
  Color _buttonThreeColor = Colors.white;
  String _textString = 'None';

  Color get buttonOneColor => _buttonOneColor;
  Color get buttonTwoColor => _buttonTwoColor;
  Color get buttonThreeColor => _buttonThreeColor;
  String get textString => _textString;

  void selectButton(int button) {
    switch (button) {
      case 1:
        _buttonOneColor = Colors.black;
        _buttonTwoColor = Colors.white;
        _buttonThreeColor = Colors.white;
        _textString = 'One';
        break;

      case 2:
        _buttonOneColor = Colors.white;
        _buttonTwoColor = Colors.black;
        _buttonThreeColor = Colors.white;
        _textString = 'Two';
        break;

      case 3:
        _buttonOneColor = Colors.white;
        _buttonTwoColor = Colors.white;
        _buttonThreeColor = Colors.black;
        _textString = 'Three';
        break;
      default:
        print('Wrong.');
        break;
    }

    notifyListeners();
  }
}
