import '/components/infocard/infocard_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_agency_or_location_widget.dart'
    show SearchAgencyOrLocationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchAgencyOrLocationModel
    extends FlutterFlowModel<SearchAgencyOrLocationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for infocard component.
  late InfocardModel infocardModel1;
  // Model for infocard component.
  late InfocardModel infocardModel2;
  // Model for infocard component.
  late InfocardModel infocardModel3;
  // Model for infocard component.
  late InfocardModel infocardModel4;
  // Model for infocard component.
  late InfocardModel infocardModel5;
  // Model for infocard component.
  late InfocardModel infocardModel6;

  @override
  void initState(BuildContext context) {
    infocardModel1 = createModel(context, () => InfocardModel());
    infocardModel2 = createModel(context, () => InfocardModel());
    infocardModel3 = createModel(context, () => InfocardModel());
    infocardModel4 = createModel(context, () => InfocardModel());
    infocardModel5 = createModel(context, () => InfocardModel());
    infocardModel6 = createModel(context, () => InfocardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    infocardModel1.dispose();
    infocardModel2.dispose();
    infocardModel3.dispose();
    infocardModel4.dispose();
    infocardModel5.dispose();
    infocardModel6.dispose();
  }
}
