import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/traveller_profile_component/traveller_profile_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'traveller_edit_profile_page_model.dart';
export 'traveller_edit_profile_page_model.dart';

class TravellerEditProfilePageWidget extends StatefulWidget {
  const TravellerEditProfilePageWidget({super.key});

  @override
  State<TravellerEditProfilePageWidget> createState() =>
      _TravellerEditProfilePageWidgetState();
}

class _TravellerEditProfilePageWidgetState
    extends State<TravellerEditProfilePageWidget> {
  late TravellerEditProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TravellerEditProfilePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('MainProfilePage');
            },
          ),
          title: Text(
            'Edit Profile',
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StreamBuilder<List<TravellerRecord>>(
                  stream: queryTravellerRecord(
                    queryBuilder: (travellerRecord) => travellerRecord.where(
                      'Userid',
                      isEqualTo: currentUserReference,
                    ),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<TravellerRecord>
                        travellerProfileComponentTravellerRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final travellerProfileComponentTravellerRecord =
                        travellerProfileComponentTravellerRecordList.isNotEmpty
                            ? travellerProfileComponentTravellerRecordList.first
                            : null;
                    return wrapWithModel(
                      model: _model.travellerProfileComponentModel,
                      updateCallback: () => setState(() {}),
                      child: TravellerProfileComponentWidget(
                        travllerDoc: travellerProfileComponentTravellerRecord!,
                        onEditAction: () async {},
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
