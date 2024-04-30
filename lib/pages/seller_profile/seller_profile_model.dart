import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seller_profile_widget.dart' show SellerProfileWidget;
import 'package:flutter/material.dart';

class SellerProfileModel extends FlutterFlowModel<SellerProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in sellerProfile widget.
  List<ChatsRecord>? userquery;
  // Stores action output result for [Firestore Query - Query a collection] action in sellerProfile widget.
  List<ChatsRecord>? sellerquery;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newchat1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? userquery1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? sellerquery1;
  // Stores action output result for [Custom Action - getChatDoc] action in Button widget.
  ChatsRecord? theChat1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newchat;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? userquery2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? sellerquery2;
  // Stores action output result for [Custom Action - getChatDoc] action in Button widget.
  ChatsRecord? theChat2;
  // Stores action output result for [Custom Action - commonExist] action in Button widget.
  bool? commonExist;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newchat2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? userquery3;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? sellerquery3;
  // Stores action output result for [Custom Action - getChatDoc] action in Button widget.
  ChatsRecord? theChat3;
  // Stores action output result for [Custom Action - getChatDoc] action in Button widget.
  ChatsRecord? theChat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
