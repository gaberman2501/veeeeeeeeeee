import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personal_itinerary_widget.dart' show PersonalItineraryWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PersonalItineraryModel extends FlutterFlowModel<PersonalItineraryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for startDateTime widget.
  FocusNode? startDateTimeFocusNode;
  TextEditingController? startDateTimeTextController;
  final startDateTimeMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? startDateTimeTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for endDateTime widget.
  FocusNode? endDateTimeFocusNode;
  TextEditingController? endDateTimeTextController;
  final endDateTimeMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? endDateTimeTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for travellerCount widget.
  int? travellerCountValue;
  // State field(s) for locationCount widget.
  int? locationCountValue;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    startDateTimeFocusNode?.dispose();
    startDateTimeTextController?.dispose();

    endDateTimeFocusNode?.dispose();
    endDateTimeTextController?.dispose();
  }
}
