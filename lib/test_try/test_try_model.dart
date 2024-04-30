import '/flutter_flow/flutter_flow_util.dart';
import 'test_try_widget.dart' show TestTryWidget;
import 'package:flutter/material.dart';

class TestTryModel extends FlutterFlowModel<TestTryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
