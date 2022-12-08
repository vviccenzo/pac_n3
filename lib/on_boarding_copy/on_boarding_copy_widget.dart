import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingCopyWidget extends StatefulWidget {
  const OnBoardingCopyWidget({Key? key}) : super(key: key);

  @override
  _OnBoardingCopyWidgetState createState() => _OnBoardingCopyWidgetState();
}

class _OnBoardingCopyWidgetState extends State<OnBoardingCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (Theme.of(context).brightness == Brightness.dark)
                            Image.asset(
                              'assets/images/HiSBkKXBStqEj2BDbknn_logos-final-16_preview_rev_1.png',
                              width: 150,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          if (Theme.of(context).brightness == Brightness.light)
                            Image.asset(
                              'assets/images/HiSBkKXBStqEj2BDbknn_logos-final-16_preview_rev_1.png',
                              width: 150,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Você é aluno ou professor?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 10, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'prof_login',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Professor',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Color(0xFF7A3236),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'alu_login',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 500),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Aluno',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Color(0xFF516066),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
