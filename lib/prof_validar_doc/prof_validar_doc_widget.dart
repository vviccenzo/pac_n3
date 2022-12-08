import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfValidarDocWidget extends StatefulWidget {
  const ProfValidarDocWidget({
    Key? key,
    this.validar,
  }) : super(key: key);

  final DocumentReference? validar;

  @override
  _ProfValidarDocWidgetState createState() => _ProfValidarDocWidgetState();
}

class _ProfValidarDocWidgetState extends State<ProfValidarDocWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              'prof_buscarPendentes',
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
          'Validar documento',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
            child: StreamBuilder<List<DocumentoFinalRecord>>(
              stream: queryDocumentoFinalRecord(
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
                List<DocumentoFinalRecord> columnDocumentoFinalRecordList =
                    snapshot.data!;
                // Return an empty Container when the document does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnDocumentoFinalRecord =
                    columnDocumentoFinalRecordList.isNotEmpty
                        ? columnDocumentoFinalRecordList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                columnDocumentoFinalRecord!.userEmail!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 28,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  columnDocumentoFinalRecord!.docStatusNew!,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF516066),
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                columnDocumentoFinalRecord!.docNome!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 28,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                columnDocumentoFinalRecord!.docHoras!
                                    .toString(),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF516066),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                columnDocumentoFinalRecord!.docDesc!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF516066),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Image.network(
                                    columnDocumentoFinalRecord!.docImg!,
                                    width: 300,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final documentoFinalUpdateData =
                              createDocumentoFinalRecordData(
                            docStatusNew: 'Aprovado',
                          );
                          await columnDocumentoFinalRecord!.reference
                              .update(documentoFinalUpdateData);
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Documento validado '),
                                content:
                                    Text('Documento validado com sucesso!'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          await Future.delayed(
                              const Duration(milliseconds: 800));

                          context.pushNamed('prof_homePage');
                        },
                        text: 'Aprovar',
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: Color(0xFF7A3236),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final documentoFinalUpdateData =
                              createDocumentoFinalRecordData(
                            docStatusNew: 'Reprovado',
                          );
                          await columnDocumentoFinalRecord!.reference
                              .update(documentoFinalUpdateData);
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Documento reprovado'),
                                content:
                                    Text('Documento reprovado com sucesso!'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          await Future.delayed(
                              const Duration(milliseconds: 800));

                          context.pushNamed('prof_homePage');
                        },
                        text: 'Reprovar',
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: Color(0xFF516066),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
