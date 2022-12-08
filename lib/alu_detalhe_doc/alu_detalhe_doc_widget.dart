import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AluDetalheDocWidget extends StatefulWidget {
  const AluDetalheDocWidget({
    Key? key,
    this.documentoEditar,
  }) : super(key: key);

  final DocumentReference? documentoEditar;

  @override
  _AluDetalheDocWidgetState createState() => _AluDetalheDocWidgetState();
}

class _AluDetalheDocWidgetState extends State<AluDetalheDocWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AlunoRecord>>(
      stream: queryAlunoRecord(
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
        List<AlunoRecord> aluDetalheDocAlunoRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final aluDetalheDocAlunoRecord = aluDetalheDocAlunoRecordList.isNotEmpty
            ? aluDetalheDocAlunoRecordList.first
            : null;
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
                  'alu_buscarDoc',
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
              'Documento',
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
              child: StreamBuilder<List<DocumentoFinalRecord>>(
                stream: queryDocumentoFinalRecord(
                  queryBuilder: (documentoFinalRecord) => documentoFinalRecord
                      .where('user_email', isEqualTo: currentUserEmail),
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController1 ??=
                                        TextEditingController(
                                      text: columnDocumentoFinalRecord!.docNome,
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Nome documento',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF516066),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF516066),
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
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Outfit',
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  columnDocumentoFinalRecord!.docStatusNew!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF7A3236),
                                        fontSize: 20,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController2 ??=
                                        TextEditingController(
                                      text: columnDocumentoFinalRecord!.docHoras
                                          ?.toString(),
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Horas',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF516066),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF516066),
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
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Outfit',
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: textController3 ??=
                                        TextEditingController(
                                      text: columnDocumentoFinalRecord!.docDesc,
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Descrição',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF516066),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF516066),
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
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Outfit',
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 250,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1F24),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.network(
                                      columnDocumentoFinalRecord!.docImg!,
                                      width: 250,
                                      height: 250,
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Carregar imagem',
                                          options: FFButtonOptions(
                                            width: 180,
                                            height: 40,
                                            color: Color(0xFF7A3236),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      if (columnDocumentoFinalRecord!.docStatusNew == 'Aprovar')
                        FFButtonWidget(
                          onPressed: () async {
                            final alunoUpdateData = createAlunoRecordData(
                              aluHoras: functions.calcular(
                                  columnDocumentoFinalRecord!.docHoras,
                                  int.parse(textController2?.text ?? '')),
                            );
                            await columnDocumentoFinalRecord!.aluHoras!
                                .update(alunoUpdateData);
                          },
                          text: 'Atualizar horas',
                          options: FFButtonOptions(
                            width: 180,
                            height: 40,
                            color: Color(0xFF7A3236),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      final documentoFinalUpdateData =
                                          createDocumentoFinalRecordData(
                                        docNome: textController1?.text ?? '',
                                        docDesc: textController3?.text ?? '',
                                        docHoras: int.tryParse(
                                            textController2?.text ?? ''),
                                        docImg:
                                            columnDocumentoFinalRecord!.docImg,
                                      );
                                      await widget.documentoEditar!
                                          .update(documentoFinalUpdateData);
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Editar documento'),
                                            content: Text(
                                                'Documento alucinado com sucesso'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      await Future.delayed(
                                          const Duration(milliseconds: 800));

                                      context.pushNamed(
                                        'alu_buscarDoc',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.leftToRight,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Editar',
                                    options: FFButtonOptions(
                                      width: 200,
                                      height: 40,
                                      color: Color(0xFF7A3236),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
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
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    await widget.documentoEditar!.delete();
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Excluir documento'),
                                          content: Text(
                                              'Documento excluido com sucesso!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    await Future.delayed(
                                        const Duration(milliseconds: 800));

                                    context.pushNamed(
                                      'alu_buscarDoc',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.leftToRight,
                                          duration: Duration(milliseconds: 500),
                                        ),
                                      },
                                    );
                                  },
                                  text: 'Remover',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 40,
                                    color: Color(0xFF516066),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
