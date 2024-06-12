import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_profile_atrributes_component_model.dart';
export 'edit_profile_atrributes_component_model.dart';

class EditProfileAtrributesComponentWidget extends StatefulWidget {
  const EditProfileAtrributesComponentWidget({super.key});

  @override
  State<EditProfileAtrributesComponentWidget> createState() =>
      _EditProfileAtrributesComponentWidgetState();
}

class _EditProfileAtrributesComponentWidgetState
    extends State<EditProfileAtrributesComponentWidget> {
  late EditProfileAtrributesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileAtrributesComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 0.0,
          height: 45.0,
          decoration: BoxDecoration(),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
          child: Text(
            'Name',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Expanded(
          child: Container(
            width: 0.0,
            height: 45.0,
            decoration: BoxDecoration(),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
          child: Text(
            'Name',
            textAlign: TextAlign.end,
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
