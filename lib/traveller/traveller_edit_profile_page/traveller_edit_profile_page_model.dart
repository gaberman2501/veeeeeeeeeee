import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/traveller_profile_component/traveller_profile_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'traveller_edit_profile_page_widget.dart'
    show TravellerEditProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TravellerEditProfilePageModel
    extends FlutterFlowModel<TravellerEditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TravellerProfileComponent component.
  late TravellerProfileComponentModel travellerProfileComponentModel;

  @override
  void initState(BuildContext context) {
    travellerProfileComponentModel =
        createModel(context, () => TravellerProfileComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    travellerProfileComponentModel.dispose();
  }
}
