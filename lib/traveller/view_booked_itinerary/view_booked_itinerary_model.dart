import '/components/infocard/infocard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'view_booked_itinerary_widget.dart' show ViewBookedItineraryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewBookedItineraryModel
    extends FlutterFlowModel<ViewBookedItineraryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for infocard component.
  late InfocardModel infocardModel1;
  // Model for infocard component.
  late InfocardModel infocardModel2;
  // Model for infocard component.
  late InfocardModel infocardModel3;
  // Model for infocard component.
  late InfocardModel infocardModel4;

  @override
  void initState(BuildContext context) {
    infocardModel1 = createModel(context, () => InfocardModel());
    infocardModel2 = createModel(context, () => InfocardModel());
    infocardModel3 = createModel(context, () => InfocardModel());
    infocardModel4 = createModel(context, () => InfocardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    infocardModel1.dispose();
    infocardModel2.dispose();
    infocardModel3.dispose();
    infocardModel4.dispose();
  }
}
