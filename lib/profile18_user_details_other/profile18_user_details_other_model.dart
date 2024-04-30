import '/flutter_flow/flutter_flow_util.dart';
import 'profile18_user_details_other_widget.dart'
    show Profile18UserDetailsOtherWidget;
import 'package:flutter/material.dart';

class Profile18UserDetailsOtherModel
    extends FlutterFlowModel<Profile18UserDetailsOtherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
