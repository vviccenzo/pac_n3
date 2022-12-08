import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfPerfilWidget extends StatefulWidget {
  const ProfPerfilWidget({Key? key}) : super(key: key);

  @override
  _ProfPerfilWidgetState createState() => _ProfPerfilWidgetState();
}

class _ProfPerfilWidgetState extends State<ProfPerfilWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 350.ms,
          begin: Offset(40, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 350.ms,
          begin: Offset(-40, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF7A3236),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed(
              'prof_homePage',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                  duration: Duration(milliseconds: 500),
                ),
              },
            );
          },
        ),
        title: Text(
          'Perfil',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Outfit',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<ProfessorRecord>>(
                stream: queryProfessorRecord(
                  queryBuilder: (professorRecord) => professorRecord
                      .where('email', isEqualTo: currentUserEmail),
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<ProfessorRecord> rowProfessorRecordList = snapshot.data!;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final rowProfessorRecord = rowProfessorRecordList.isNotEmpty
                      ? rowProfessorRecordList.first
                      : null;
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 120, 0),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFF516066),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 2, 2, 2),
                                              child: Container(
                                                width: 80,
                                                height: 80,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  rowProfessorRecord!.photoUrl!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 44,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Color(0xFF516066),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.edit_outlined,
                                            color: Color(0xFF516066),
                                            size: 24,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 15, 0),
                                          child: Container(
                                            width: 44,
                                            height: 44,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFF516066),
                                              ),
                                            ),
                                            child: InkWell(
                                              onTap: () async {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                await signOut();

                                                context.goNamedAuth(
                                                    'onBoardingCopy', mounted);
                                              },
                                              child: Icon(
                                                Icons.logout,
                                                color: Color(0xFF7A3236),
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        rowProfessorRecord!.userName!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          rowProfessorRecord!.email!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF7A3236),
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 4,
                                    thickness: 4,
                                    endIndent: 20,
                                    color: Color(0xFF7A3236),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 1, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (!(Theme.of(context).brightness ==
                                            Brightness.dark))
                                          InkWell(
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.dark);
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation2'] !=
                                                  null) {
                                                setState(() =>
                                                    hasContainerTriggered2 =
                                                        true);
                                                SchedulerBinding.instance
                                                    .addPostFrameCallback(
                                                        (_) async =>
                                                            await animationsMap[
                                                                    'containerOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0));
                                              }
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 24, 12),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Dark Mode',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.95, 0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          8,
                                                                          0),
                                                              child: Icon(
                                                                Icons
                                                                    .nights_stay,
                                                                color: Color(
                                                                    0xFF95A1AC),
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.85, 0),
                                                            child: Container(
                                                              width: 36,
                                                              height: 36,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4,
                                                                    color: Color(
                                                                        0x430B0D0F),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            2),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                            ).animateOnActionTrigger(
                                                                animationsMap[
                                                                    'containerOnActionTriggerAnimation1']!,
                                                                hasBeenTriggered:
                                                                    hasContainerTriggered1),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (Theme.of(context).brightness ==
                                            Brightness.dark)
                                          InkWell(
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.light);
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation1'] !=
                                                  null) {
                                                setState(() =>
                                                    hasContainerTriggered1 =
                                                        true);
                                                SchedulerBinding.instance
                                                    .addPostFrameCallback(
                                                        (_) async =>
                                                            await animationsMap[
                                                                    'containerOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0));
                                              }
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 24, 12),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Light Mode',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.9, 0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          2,
                                                                          0,
                                                                          0),
                                                              child: Icon(
                                                                Icons
                                                                    .wb_sunny_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.9, 0),
                                                            child: Container(
                                                              width: 36,
                                                              height: 36,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4,
                                                                    color: Color(
                                                                        0x430B0D0F),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            2),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                              ),
                                                            ).animateOnActionTrigger(
                                                                animationsMap[
                                                                    'containerOnActionTriggerAnimation2']!,
                                                                hasBeenTriggered:
                                                                    hasContainerTriggered2),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Documentos',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: StreamBuilder<List<DocumentoFinalRecord>>(
                      stream: queryDocumentoFinalRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<DocumentoFinalRecord>
                            listViewDocumentoFinalRecordList = snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewDocumentoFinalRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewDocumentoFinalRecord =
                                listViewDocumentoFinalRecordList[listViewIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'prof_validarDoc',
                                    queryParams: {
                                      'validar': serializeParam(
                                        listViewDocumentoFinalRecord.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 500),
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        Color(0xFF7A3236)
                                      ],
                                      stops: [1, 1],
                                      begin: AlignmentDirectional(0.34, -1),
                                      end: AlignmentDirectional(-0.34, 1),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              listViewDocumentoFinalRecord
                                                  .docNome!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF516066),
                                              size: 24,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              listViewDocumentoFinalRecord
                                                  .docStatusNew!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
