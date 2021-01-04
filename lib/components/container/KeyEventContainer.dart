import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class KeyEventContainer extends StatefulWidget {
  final Widget child;

  KeyEventContainer({this.child});

  @override
  KeyEvnentContainerState createState() => KeyEvnentContainerState(child);
}

class KeyEvnentContainerState extends State {
  Widget child;

  KeyEvnentContainerState(Widget child) {
    this.child = child;
  }
  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(onKey: (FocusNode node, RawKeyEvent event) {
        if (event.data == RawKeyEventDataAndroid() ||
            event.data == RawKeyEventDataMacOs()) {}
        return false;
      }),
      child: Container(
        child: this.child,
      ),
      onKey: (event) {
        log(event.data.toString());
      },
    );
  }
}
