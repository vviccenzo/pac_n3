import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfBuscarReprovadosWidget extends StatefulWidget {
  const ProfBuscarReprovadosWidget({Key? key}) : super(key: key);

  @override
  _ProfBuscarReprovadosWidgetState createState() =>
      _ProfBuscarReprovadosWidgetState();
}

class _ProfBuscarReprovadosWidgetState
    extends State<ProfBuscarReprovadosWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
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
                  transitionType: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 500),
                ),
              },
            );
          },
        ),
        title: Text(
          'Reprovado',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: textController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'textController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Buscar documento',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Color(0xFF516066),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF516066),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<List<DocumentoFinalRecord>>(
                stream: queryDocumentoFinalRecord(
                  queryBuilder: (documentoFinalRecord) => documentoFinalRecord
                      .where('doc_nome',
                          isEqualTo: textController!.text != ''
                              ? textController!.text
                              : null)
                      .where('doc_statusNew', isEqualTo: 'Reprovar'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitFadingCube(
                            color: Color(0xFF7A3236),
                            size: 50,
                          ),
                        ),
                      ),
                    );
                  }
                  List<DocumentoFinalRecord> listViewDocumentoFinalRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewDocumentoFinalRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewDocumentoFinalRecord =
                          listViewDocumentoFinalRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        listViewDocumentoFinalRecord.docNome!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 22,
                                              fontWeight: FontWeight.normal,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        listViewDocumentoFinalRecord
                                            .docStatusNew!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          final documentoFinalUpdateData =
                                              createDocumentoFinalRecordData(
                                            docStatusNew: 'Aprovar',
                                          );
                                          await listViewDocumentoFinalRecord
                                              .reference
                                              .update(documentoFinalUpdateData);
                                        },
                                        child: Icon(
                                          Icons.check_circle_rounded,
                                          color: Color(0xFF55AC4F),
                                          size: 36,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        listViewDocumentoFinalRecord.docHoras!
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
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
            ],
          ),
        ),
      ),
    );
  }
}
