import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'profile_component_widget.dart' show ProfileComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProfileComponentModel extends FlutterFlowModel<ProfileComponentWidget> {
  ///  Local state fields for this component.

  bool isEditMode = false;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  // State field(s) for ContactNumberTextField widget.
  FocusNode? contactNumberTextFieldFocusNode;
  TextEditingController? contactNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      contactNumberTextFieldTextControllerValidator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for AddressTextField widget.
  FocusNode? addressTextFieldFocusNode;
  TextEditingController? addressTextFieldTextController;
  String? Function(BuildContext, String?)?
      addressTextFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for StarWorkTextField widget.
  FocusNode? starWorkTextFieldFocusNode;
  TextEditingController? starWorkTextFieldTextController;
  String? Function(BuildContext, String?)?
      starWorkTextFieldTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for EndWorkTextField widget.
  FocusNode? endWorkTextFieldFocusNode;
  TextEditingController? endWorkTextFieldTextController;
  String? Function(BuildContext, String?)?
      endWorkTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();

    contactNumberTextFieldFocusNode?.dispose();
    contactNumberTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    addressTextFieldFocusNode?.dispose();
    addressTextFieldTextController?.dispose();

    starWorkTextFieldFocusNode?.dispose();
    starWorkTextFieldTextController?.dispose();

    endWorkTextFieldFocusNode?.dispose();
    endWorkTextFieldTextController?.dispose();
  }
}
