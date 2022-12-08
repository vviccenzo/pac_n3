import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfHomePageWidget extends StatefulWidget {
  const ProfHomePageWidget({Key? key}) : super(key: key);

  @override
  _ProfHomePageWidgetState createState() => _ProfHomePageWidgetState();
}

class _ProfHomePageWidgetState extends State<ProfHomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProfessorRecord>>(
      stream: queryProfessorRecord(
        queryBuilder: (professorRecord) =>
            professorRecord.where('email', isEqualTo: currentUserEmail),
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
        List<ProfessorRecord> profHomePageProfessorRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final profHomePageProfessorRecord =
            profHomePageProfessorRecordList.isNotEmpty
                ? profHomePageProfessorRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFF7A3236),
            automaticallyImplyLeading: false,
            title: Text(
              'Homepage',
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 20, 5),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'prof_perfil',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 500),
                        ),
                      },
                    );
                  },
                  child: FaIcon(
                    FontAwesomeIcons.userCircle,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    size: 40,
                  ),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Bem-vindo',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 30,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              profHomePageProfessorRecord!.userName!,
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF7A3236),
                                        fontSize: 32,
                                        fontWeight: FontWeight.normal,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Atividades',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.86,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF55AC4F),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'prof_buscarValidados',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 15, 0),
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              color: Colors.black,
                                              size: 45,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 15, 10, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Validados',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 19,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 8),
                                                      child: AutoSizeText(
                                                        'Documentos recebidos que foram validados',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText2
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.86,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9713F),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'prof_buscarPendentes',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 15, 0),
                                            child: Icon(
                                              Icons.access_time_outlined,
                                              color: Colors.black,
                                              size: 45,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 15, 10, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Recebidos',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 8),
                                                      child: AutoSizeText(
                                                        'Documentos recebidos que estão esperando aprovação',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText2
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.86,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEF2D2D),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'prof_buscarReprovados',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 500),
                                            ),
                                          },
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 15, 0),
                                            child: Icon(
                                              Icons.cancel_outlined,
                                              color: Colors.black,
                                              size: 45,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 15, 10, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Reprovados',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 8),
                                                      child: AutoSizeText(
                                                        'Documentos recebidos que não foram validados',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText2
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
