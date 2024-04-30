import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_detail_copy_widget.dart' show ProductDetailCopyWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailCopyModel extends FlutterFlowModel<ProductDetailCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? userquery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? sellerquery;
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
