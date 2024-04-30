import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool isFullListShown = true;

  List<ItemsRecord> currentItemList = [];
  void addToCurrentItemList(ItemsRecord item) => currentItemList.add(item);
  void removeFromCurrentItemList(ItemsRecord item) =>
      currentItemList.remove(item);
  void removeAtIndexFromCurrentItemList(int index) =>
      currentItemList.removeAt(index);
  void insertAtIndexInCurrentItemList(int index, ItemsRecord item) =>
      currentItemList.insert(index, item);
  void updateCurrentItemListAtIndex(
          int index, Function(ItemsRecord) updateFn) =>
      currentItemList[index] = updateFn(currentItemList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ItemsRecord>? searchButtonAll;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ItemsRecord>? searchButtonSelected;
  List<ItemsRecord> simpleSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ItemsRecord>? noSearchAll;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<ItemsRecord>? noSearchSelected;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<ItemsRecord>? allResult;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<ItemsRecord>? filterResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
