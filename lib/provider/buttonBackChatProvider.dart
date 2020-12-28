import 'package:flutter/material.dart';

class ButtonBackProvider extends ChangeNotifier {
  bool number = false;
  incrementNumber() {
    number = true;
  }

  stateNumber() {
    return number;
  }

  decrementNumber() {
    number = false;
  }
}
