import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chat_groupwbubbles/chat_details_overlay_1/chat_details_overlay1_widget.dart';
import '/chat_groupwbubbles/chat_thread_component_1/chat_thread_component1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_details_model.dart';
export 'chat_details_model.dart';

class ChatDetailsWidget extends StatefulWidget {
  const ChatDetailsWidget({
    super.key,
    required this.chatRef,
  });

  final ChatsRecord? chatRef;

  @override
  State<ChatDetailsWidget> createState() => _ChatDetailsWidgetState();
}

class _ChatDetailsWidgetState extends State<ChatDetailsWidget> {
  late ChatDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      unawaited(
        () async {
          await widget.chatRef!.reference.update({
            ...mapToFirestore(
              {
                'last_message_seen_by':
                    FieldValue.arrayUnion([currentUserReference]),
              },
            ),
          });
        }(),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UsersRecord>(
      future: UsersRecord.getDocumentOnce(widget.chatRef!.users
          .where((e) => e != currentUserReference)
          .toList()
          .first),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final chatDetailsUsersRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  setState(() => _model.documentRequestCompleter = null);
                  await _model.waitForDocumentRequestCompleted();

                  context.goNamed(
                    'chat_2_main_1',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.leftToRight,
                        duration: Duration(milliseconds: 230),
                      ),
                    },
                  );
                },
              ),
              title: FutureBuilder<UsersRecord>(
                future: (_model.documentRequestCompleter ??=
                        Completer<UsersRecord>()
                          ..complete(UsersRecord.getDocumentOnce(widget
                              .chatRef!.users
                              .where((e) => e != currentUserReference)
                              .toList()
                              .first)))
                    .future,
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final conditionalBuilderUsersRecord = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      if (widget.chatRef!.users.length <= 2) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'sellerProfile',
                              queryParameters: {
                                'sellerInfo': serializeParam(
                                  conditionalBuilderUsersRecord,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'sellerInfo': conditionalBuilderUsersRecord,
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (conditionalBuilderUsersRecord.photoUrl != '')
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Container(
                                      width: 44.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            conditionalBuilderUsersRecord
                                                .photoUrl,
                                            width: 44.0,
                                            height: 44.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        conditionalBuilderUsersRecord
                                            .displayName,
                                        'Username not set',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily),
                                          ),
                                    ),
                                    if (conditionalBuilderUsersRecord.uid ==
                                        'GLMfoCOOjGTMRo5r87oqzF7V4FF3')
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Please give us feed back.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Group Chat',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily),
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      '${valueOrDefault<String>(
                                        widget.chatRef?.users.length
                                            .toString(),
                                        '2',
                                      )} members',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  );
                },
              ),
              actions: [
                Visibility(
                  visible: chatDetailsUsersRecord.uid ==
                      'GLMfoCOOjGTMRo5r87oqzF7V4FF3',
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 8.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderRadius: 12.0,
                      borderWidth: 2.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.more_vert,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: FlutterFlowTheme.of(context).accent4,
                          barrierColor: const Color(0x00FFFFFF),
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: ChatDetailsOverlay1Widget(
                                  chatRef: widget.chatRef!,
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: wrapWithModel(
                model: _model.chatThreadComponent1Model,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: ChatThreadComponent1Widget(
                  chatRef: widget.chatRef,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
