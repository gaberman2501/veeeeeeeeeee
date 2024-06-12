import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/location_owner_profile_component/location_owner_profile_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'location_owner_edit_profile_page_copy_widget.dart'
    show LocationOwnerEditProfilePageCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationOwnerEditProfilePageCopyModel
    extends FlutterFlowModel<LocationOwnerEditProfilePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LocationOwnerProfileComponent component.
  late LocationOwnerProfileComponentModel locationOwnerProfileComponentModel;

  @override
  void initState(BuildContext context) {
    locationOwnerProfileComponentModel =
        createModel(context, () => LocationOwnerProfileComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    locationOwnerProfileComponentModel.dispose();
  }
}
