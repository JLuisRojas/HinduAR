import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter/material.dart';

class ArScreen extends StatefulWidget {
  final String ar;

  ArScreen({
    @required this.ar,
  });

  @override
  _ArScreen createState() => _ArScreen();
}

class _ArScreen extends State<ArScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
    GlobalKey<ScaffoldState>();

  final colorA = Color.fromRGBO(29, 33, 43, 1.0);

  UnityWidgetController _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        backgroundColor: colorA,
        elevation: 0,
      ),
      key: _scaffoldKey,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.blue,
          child: UnityWidget(
            fullscreen: false,
            onUnityCreated: onUnityCreated,
          ),
        ),
      ),
    );

  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;

    _unityWidgetController.postMessage("Prueba", "SetArObject", widget.ar);
  }
}
