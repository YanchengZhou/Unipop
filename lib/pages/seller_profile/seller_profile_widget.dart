import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'seller_profile_model.dart';
export 'seller_profile_model.dart';

class SellerProfileWidget extends StatefulWidget {
  const SellerProfileWidget({
    super.key,
    required this.sellerInfo,
  });

  final UsersRecord? sellerInfo;

  @override
  State<SellerProfileWidget> createState() => _SellerProfileWidgetState();
}

class _SellerProfileWidgetState extends State<SellerProfileWidget>
    with TickerProviderStateMixin {
  late SellerProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SellerProfileModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userquery = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord.where(
          'users',
          arrayContains: currentUserReference,
        ),
      );
      _model.sellerquery = await queryChatsRecordOnce(
        queryBuilder: (chatsRecord) => chatsRecord.where(
          'users',
          arrayContains: widget.sellerInfo?.reference,
        ),
      );
    });

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 175.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 175.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 175.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 50.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
          ),
          title: Text(
            'Back',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 32.0),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxWidth: 1170.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFB8BA),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 12.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            widget.sellerInfo?.photoUrl,
                                            'https://placehold.co/230x230/png/?text=No%20photo\\navailable',
                                          ),
                                          width: 108.0,
                                          height: 151.0,
                                          fit: BoxFit.cover,
                                          alignment: const Alignment(1.0, 0.0),
                                        ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Randy Alcorn',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLargeFamily),
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 12.0, 12.0),
                                              child: RatingBar.builder(
                                                onRatingUpdate: (newValue) =>
                                                    setState(() =>
                                                        _model.ratingBarValue =
                                                            newValue),
                                                itemBuilder: (context, index) =>
                                                    Icon(
                                                  Icons.star_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                                direction: Axis.horizontal,
                                                initialRating: _model
                                                    .ratingBarValue ??= 4.0,
                                                unratedColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                itemCount: 5,
                                                itemSize: 24.0,
                                                glowColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    '240 Sales',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 2.0, 0.0, 0.0),
                                                  child: Text(
                                                    'San Antonio, Tx.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 80.0),
                                          child: FlutterFlowIconButton(
                                            borderColor: const Color(0xFFFFB8BA),
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor: const Color(0xFFFFB8BA),
                                            icon: Icon(
                                              Icons.sms,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              if (!(_model.userquery != null &&
                                                  (_model.userquery)!
                                                      .isNotEmpty)) {
                                                var chatsRecordReference1 =
                                                    ChatsRecord.collection
                                                        .doc();
                                                await chatsRecordReference1
                                                    .set({
                                                  ...createChatsRecordData(
                                                    from: currentUserReference,
                                                    to: widget
                                                        .sellerInfo?.reference,
                                                    userA: currentUserReference,
                                                    userB: widget
                                                        .sellerInfo?.reference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'sendTime': FieldValue
                                                          .serverTimestamp(),
                                                      'users': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                });
                                                _model.newchat1 = ChatsRecord
                                                    .getDocumentFromData({
                                                  ...createChatsRecordData(
                                                    from: currentUserReference,
                                                    to: widget
                                                        .sellerInfo?.reference,
                                                    userA: currentUserReference,
                                                    userB: widget
                                                        .sellerInfo?.reference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'sendTime':
                                                          DateTime.now(),
                                                      'users': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                }, chatsRecordReference1);
                                                unawaited(
                                                  () async {
                                                    await _model
                                                        .newchat1!.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'users': FieldValue
                                                              .arrayUnion([
                                                            widget.sellerInfo
                                                                ?.reference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                  }(),
                                                );
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                                _model.userquery1 =
                                                    await queryChatsRecordOnce(
                                                  queryBuilder: (chatsRecord) =>
                                                      chatsRecord.where(
                                                    'users',
                                                    arrayContains:
                                                        currentUserReference,
                                                  ),
                                                );
                                                _model.sellerquery1 =
                                                    await queryChatsRecordOnce(
                                                  queryBuilder: (chatsRecord) =>
                                                      chatsRecord.where(
                                                    'users',
                                                    arrayContains: widget
                                                        .sellerInfo?.reference,
                                                  ),
                                                );
                                                _model.theChat1 =
                                                    await actions.getChatDoc(
                                                  _model.userquery1?.toList(),
                                                  _model.sellerquery1?.toList(),
                                                );

                                                context.pushNamed(
                                                  'chat_Details',
                                                  queryParameters: {
                                                    'chatRef': serializeParam(
                                                      _model.theChat1,
                                                      ParamType.Document,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'chatRef': _model.theChat1,
                                                  },
                                                );
                                              } else if (!(_model.sellerquery !=
                                                      null &&
                                                  (_model.sellerquery)!
                                                      .isNotEmpty)) {
                                                var chatsRecordReference2 =
                                                    ChatsRecord.collection
                                                        .doc();
                                                await chatsRecordReference2
                                                    .set({
                                                  ...createChatsRecordData(
                                                    from: currentUserReference,
                                                    to: widget
                                                        .sellerInfo?.reference,
                                                    userA: currentUserReference,
                                                    userB: widget
                                                        .sellerInfo?.reference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'sendTime': FieldValue
                                                          .serverTimestamp(),
                                                      'users': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                });
                                                _model.newchatCopy = ChatsRecord
                                                    .getDocumentFromData({
                                                  ...createChatsRecordData(
                                                    from: currentUserReference,
                                                    to: widget
                                                        .sellerInfo?.reference,
                                                    userA: currentUserReference,
                                                    userB: widget
                                                        .sellerInfo?.reference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'sendTime':
                                                          DateTime.now(),
                                                      'users': [
                                                        currentUserReference
                                                      ],
                                                    },
                                                  ),
                                                }, chatsRecordReference2);
                                                unawaited(
                                                  () async {
                                                    await _model
                                                        .newchatCopy!.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'users': FieldValue
                                                              .arrayUnion([
                                                            widget.sellerInfo
                                                                ?.reference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                  }(),
                                                );
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                                _model.userquery2Copy =
                                                    await queryChatsRecordOnce(
                                                  queryBuilder: (chatsRecord) =>
                                                      chatsRecord.where(
                                                    'users',
                                                    arrayContains:
                                                        currentUserReference,
                                                  ),
                                                );
                                                _model.sellerquery2Copy =
                                                    await queryChatsRecordOnce(
                                                  queryBuilder: (chatsRecord) =>
                                                      chatsRecord.where(
                                                    'users',
                                                    arrayContains: widget
                                                        .sellerInfo?.reference,
                                                  ),
                                                );
                                                _model.theChat2Copy =
                                                    await actions.getChatDoc(
                                                  _model.userquery2Copy
                                                      ?.toList(),
                                                  _model.sellerquery2Copy
                                                      ?.toList(),
                                                );

                                                context.pushNamed(
                                                  'chat_Details',
                                                  queryParameters: {
                                                    'chatRef': serializeParam(
                                                      _model.theChat2Copy,
                                                      ParamType.Document,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    'chatRef':
                                                        _model.theChat2Copy,
                                                  },
                                                );
                                              } else {
                                                _model.commonExistCopy =
                                                    await actions.commonExist(
                                                  _model.userquery?.toList(),
                                                  _model.sellerquery?.toList(),
                                                );
                                                if (!_model.commonExistCopy!) {
                                                  var chatsRecordReference3 =
                                                      ChatsRecord.collection
                                                          .doc();
                                                  await chatsRecordReference3
                                                      .set({
                                                    ...createChatsRecordData(
                                                      from:
                                                          currentUserReference,
                                                      to: widget.sellerInfo
                                                          ?.reference,
                                                      userA:
                                                          currentUserReference,
                                                      userB: widget.sellerInfo
                                                          ?.reference,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'sendTime': FieldValue
                                                            .serverTimestamp(),
                                                        'users': [
                                                          currentUserReference
                                                        ],
                                                      },
                                                    ),
                                                  });
                                                  _model.newchat2Copy =
                                                      ChatsRecord
                                                          .getDocumentFromData({
                                                    ...createChatsRecordData(
                                                      from:
                                                          currentUserReference,
                                                      to: widget.sellerInfo
                                                          ?.reference,
                                                      userA:
                                                          currentUserReference,
                                                      userB: widget.sellerInfo
                                                          ?.reference,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'sendTime':
                                                            DateTime.now(),
                                                        'users': [
                                                          currentUserReference
                                                        ],
                                                      },
                                                    ),
                                                  }, chatsRecordReference3);
                                                  unawaited(
                                                    () async {
                                                      await _model.newchat2Copy!
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'users': FieldValue
                                                                .arrayUnion([
                                                              widget.sellerInfo
                                                                  ?.reference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                    }(),
                                                  );
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1000));
                                                  _model.userquery3Copy =
                                                      await queryChatsRecordOnce(
                                                    queryBuilder:
                                                        (chatsRecord) =>
                                                            chatsRecord.where(
                                                      'users',
                                                      arrayContains:
                                                          currentUserReference,
                                                    ),
                                                  );
                                                  _model.sellerquery3Copy =
                                                      await queryChatsRecordOnce(
                                                    queryBuilder:
                                                        (chatsRecord) =>
                                                            chatsRecord.where(
                                                      'users',
                                                      arrayContains: widget
                                                          .sellerInfo
                                                          ?.reference,
                                                    ),
                                                  );
                                                  _model.theChat3Copy =
                                                      await actions.getChatDoc(
                                                    _model.userquery3Copy
                                                        ?.toList(),
                                                    _model.sellerquery3Copy
                                                        ?.toList(),
                                                  );

                                                  context.pushNamed(
                                                    'chat_Details',
                                                    queryParameters: {
                                                      'chatRef': serializeParam(
                                                        _model.theChat3Copy,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'chatRef':
                                                          _model.theChat3Copy,
                                                    },
                                                  );
                                                } else {
                                                  _model.theChatCopy =
                                                      await actions.getChatDoc(
                                                    _model.userquery?.toList(),
                                                    _model.sellerquery
                                                        ?.toList(),
                                                  );

                                                  context.pushNamed(
                                                    'chat_Details',
                                                    queryParameters: {
                                                      'chatRef': serializeParam(
                                                        _model.theChatCopy,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'chatRef':
                                                          _model.theChatCopy,
                                                    },
                                                  );
                                                }
                                              }

                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.sellerInfo?.displayName,
                                          'Name not set',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily),
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            'Email: ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  11.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.sellerInfo?.email,
                                              'not set',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 6.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              'Phone: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily),
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.getPhone(widget
                                                    .sellerInfo?.phoneNumber),
                                                'not set',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      StreamBuilder<List<ItemsRecord>>(
                                        stream: queryItemsRecord(
                                          queryBuilder: (itemsRecord) =>
                                              itemsRecord.where(
                                            'sellerID',
                                            isEqualTo: widget.sellerInfo?.uid,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<ItemsRecord>
                                              listViewItemsRecordList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewItemsRecordList.length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewItemsRecord =
                                                  listViewItemsRecordList[
                                                      listViewIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'productDetailCopy',
                                                    queryParameters: {
                                                      'imageList':
                                                          serializeParam(
                                                        listViewItemsRecord
                                                            .image,
                                                        ParamType.String,
                                                        true,
                                                      ),
                                                      'itemDoc': serializeParam(
                                                        listViewItemsRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'itemDoc':
                                                          listViewItemsRecord,
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 2.0,
                                                        color:
                                                            Color(0x520E151B),
                                                        offset: Offset(
                                                          0.0,
                                                          1.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewItemsRecord
                                                                          .image
                                                                          .isNotEmpty
                                                                      ? listViewItemsRecord
                                                                          .image
                                                                          .first
                                                                      : 'https://placehold.co/230x230/png/?text=No%20image\\navailable',
                                                                  'https://placehold.co/230x230/png/?text=No%20image\\navailable',
                                                                ),
                                                                width: 120.0,
                                                                height: 120.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child: Text(
                                                                    listViewItemsRecord
                                                                        .name,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleLargeFamily,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  listViewItemsRecord
                                                                              .availability ==
                                                                          true
                                                                      ? 'Available'
                                                                      : 'Unavailable',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          4.0),
                                                                      child:
                                                                          Text(
                                                                        '\$${valueOrDefault<String>(
                                                                          listViewItemsRecord
                                                                              .price
                                                                              .toString(),
                                                                          '0',
                                                                        )}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontSize: 17.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation']!);
                                            },
                                          );
                                        },
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
