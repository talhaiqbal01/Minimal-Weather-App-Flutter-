import 'package:flutter/material.dart';

/// This class contains all the App Text in [IconData] formats.
class TIcons {
  TIcons._(); //-- To avoid creating instances

  // -- GLOBAL Icons
  static const IconData cancel = Icons.cancel_outlined;
  static const IconData close = Icons.close;
  static const IconData arrowRight = Icons.keyboard_arrow_right_rounded;
  static const IconData arrowUp = Icons.keyboard_arrow_up_rounded;
  static const IconData arrowDown = Icons.keyboard_arrow_down_rounded;
  static const IconData arrowLeft = Icons.keyboard_arrow_left_rounded;
  static const IconData backButton = arrowLeft;

  // -- Camera Icons
  static const IconData switchCamera = Icons.cameraswitch_rounded;
}
