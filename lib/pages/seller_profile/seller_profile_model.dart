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
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newchat1;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? userquery1;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? sellerquery1;
  // Stores action output result for [Custom Action - getChatDoc] action in IconButton widget.
  ChatsRecord? theChat1;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newchatCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? userquery2Copy;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? sellerquery2Copy;
  // Stores action output result for [Custom Action - getChatDoc] action in IconButton widget.
  ChatsRecord? theChat2Copy;
  // Stores action output result for [Custom Action - commonExist] action in IconButton widget.
  bool? commonExistCopy;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newchat2Copy;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? userquery3Copy;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ChatsRecord>? sellerquery3Copy;
  // Stores action output result for [Custom Action - getChatDoc] action in IconButton widget.
  ChatsRecord? theChat3Copy;
  // Stores action output result for [Custom Action - getChatDoc] action in IconButton widget.
  ChatsRecord? theChatCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
