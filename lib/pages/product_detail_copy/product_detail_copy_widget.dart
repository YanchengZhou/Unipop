import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_detail_copy_model.dart';
export 'product_detail_copy_model.dart';

class ProductDetailCopyWidget extends StatefulWidget {
  const ProductDetailCopyWidget({
    super.key,
    required this.imageList,
    required this.itemDoc,
  });

  final List<String>? imageList;
  final ItemsRecord? itemDoc;

  @override
  State<ProductDetailCopyWidget> createState() =>
      _ProductDetailCopyWidgetState();
}

class _ProductDetailCopyWidgetState extends State<ProductDetailCopyWidget>
    with TickerProviderStateMixin {
  late ProductDetailCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailCopyModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 450.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 450.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 450.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          alignment: const AlignmentDirectional(0.0, -1.0),
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) {
                        final imagelist = widget.imageList!.toList();
                        return SizedBox(
                          width: double.infinity,
                          height: 300.0,
                          child: CarouselSlider.builder(
                            itemCount: imagelist.length,
                            itemBuilder: (context, imagelistIndex, _) {
                              final imagelistItem = imagelist[imagelistIndex];
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  imagelistItem,
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Image.asset(
                                    'assets/images/error_image.png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                            carouselController: _model.carouselController ??=
                                CarouselController(),
                            options: CarouselOptions(
                              initialPage: min(0, imagelist.length - 1),
                              viewportFraction: 0.8,
                              disableCenter: true,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.25,
                              enableInfiniteScroll: true,
                              scrollDirection: Axis.horizontal,
                              autoPlay: false,
                              onPageChanged: (index, _) =>
                                  _model.carouselCurrentIndex = index,
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.itemDoc?.name,
                          'NameLoading',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .headlineMediumFamily),
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 0.0),
                      child: Text(
                        '\$${valueOrDefault<String>(
                          widget.itemDoc?.price.toString(),
                          'not set',
                        )}',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                      child: Container(
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          border: Border.all(
                            color: const Color(0xFF9F9D9D),
                            width: 0.3,
                          ),
                        ),
                        child: StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(
                            queryBuilder: (usersRecord) => usersRecord.where(
                              'uid',
                              isEqualTo: widget.itemDoc?.sellerID,
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
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UsersRecord> rowUsersRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final rowUsersRecord = rowUsersRecordList.isNotEmpty
                                ? rowUsersRecordList.first
                                : null;
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
                                      rowUsersRecord,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'sellerInfo': rowUsersRecord,
                                  },
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            rowUsersRecord?.photoUrl,
                                            'https://placehold.co/100x100/png/?text=No%20photo\\navailable',
                                          ),
                                          width: 69.0,
                                          height: 69.0,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 12.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            rowUsersRecord?.displayName,
                                            'Name not set',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 20.0, 0.0, 0.0),
                                        child: FutureBuilder<int>(
                                          future: queryItemsRecordCount(
                                            queryBuilder: (itemsRecord) =>
                                                itemsRecord.where(
                                              'sellerID',
                                              isEqualTo: rowUsersRecord?.uid,
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            int textCount = snapshot.data!;
                                            return Text(
                                              'Posted ${valueOrDefault<String>(
                                                textCount.toString(),
                                                '0',
                                              )} items before',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 10.0, 24.0, 10.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.itemDoc?.description,
                          'Description not set',
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation3']!),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 0.0, 0.0),
                          child: Text(
                            'Condition: ',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation4']!),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.itemDoc?.condition,
                              'Good',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation5']!),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 0.0, 0.0),
                          child: Text(
                            'Brand: ',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation6']!),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.itemDoc?.brand,
                              'Not Set',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation7']!),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (currentUserReference != widget.itemDoc?.sellerRef)
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 24.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.userquery =
                                          await queryChatsRecordOnce(
                                        queryBuilder: (chatsRecord) =>
                                            chatsRecord.where(
                                          'users',
                                          arrayContains: currentUserReference,
                                        ),
                                      );
                                      _model.sellerquery =
                                          await queryChatsRecordOnce(
                                        queryBuilder: (chatsRecord) =>
                                            chatsRecord.where(
                                          'users',
                                          arrayContains:
                                              widget.itemDoc?.sellerRef,
                                        ),
                                      );
                                      if (!(_model.userquery != null &&
                                          (_model.userquery)!.isNotEmpty)) {
                                        var chatsRecordReference1 =
                                            ChatsRecord.collection.doc();
                                        await chatsRecordReference1.set({
                                          ...createChatsRecordData(
                                            from: currentUserReference,
                                            to: widget.itemDoc?.sellerRef,
                                            userA: currentUserReference,
                                            userB: widget.itemDoc?.sellerRef,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'sendTime':
                                                  FieldValue.serverTimestamp(),
                                              'users': [currentUserReference],
                                            },
                                          ),
                                        });
                                        _model.newchat1 =
                                            ChatsRecord.getDocumentFromData({
                                          ...createChatsRecordData(
                                            from: currentUserReference,
                                            to: widget.itemDoc?.sellerRef,
                                            userA: currentUserReference,
                                            userB: widget.itemDoc?.sellerRef,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'sendTime': DateTime.now(),
                                              'users': [currentUserReference],
                                            },
                                          ),
                                        }, chatsRecordReference1);
                                        unawaited(
                                          () async {
                                            await _model.newchat1!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'users':
                                                      FieldValue.arrayUnion([
                                                    widget.itemDoc?.sellerRef
                                                  ]),
                                                },
                                              ),
                                            });
                                          }(),
                                        );
                                        await Future.delayed(
                                            const Duration(milliseconds: 1000));
                                        _model.userquery1 =
                                            await queryChatsRecordOnce(
                                          queryBuilder: (chatsRecord) =>
                                              chatsRecord.where(
                                            'users',
                                            arrayContains: currentUserReference,
                                          ),
                                        );
                                        _model.sellerquery1 =
                                            await queryChatsRecordOnce(
                                          queryBuilder: (chatsRecord) =>
                                              chatsRecord.where(
                                            'users',
                                            arrayContains:
                                                widget.itemDoc?.sellerRef,
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
                                      } else if (!(_model.sellerquery != null &&
                                          (_model.sellerquery)!.isNotEmpty)) {
                                        var chatsRecordReference2 =
                                            ChatsRecord.collection.doc();
                                        await chatsRecordReference2.set({
                                          ...createChatsRecordData(
                                            from: currentUserReference,
                                            to: widget.itemDoc?.sellerRef,
                                            userA: currentUserReference,
                                            userB: widget.itemDoc?.sellerRef,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'sendTime':
                                                  FieldValue.serverTimestamp(),
                                              'users': [currentUserReference],
                                            },
                                          ),
                                        });
                                        _model.newchat =
                                            ChatsRecord.getDocumentFromData({
                                          ...createChatsRecordData(
                                            from: currentUserReference,
                                            to: widget.itemDoc?.sellerRef,
                                            userA: currentUserReference,
                                            userB: widget.itemDoc?.sellerRef,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'sendTime': DateTime.now(),
                                              'users': [currentUserReference],
                                            },
                                          ),
                                        }, chatsRecordReference2);
                                        unawaited(
                                          () async {
                                            await _model.newchat!.reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'users':
                                                      FieldValue.arrayUnion([
                                                    widget.itemDoc?.sellerRef
                                                  ]),
                                                },
                                              ),
                                            });
                                          }(),
                                        );
                                        await Future.delayed(
                                            const Duration(milliseconds: 1000));
                                        _model.userquery2 =
                                            await queryChatsRecordOnce(
                                          queryBuilder: (chatsRecord) =>
                                              chatsRecord.where(
                                            'users',
                                            arrayContains: currentUserReference,
                                          ),
                                        );
                                        _model.sellerquery2 =
                                            await queryChatsRecordOnce(
                                          queryBuilder: (chatsRecord) =>
                                              chatsRecord.where(
                                            'users',
                                            arrayContains:
                                                widget.itemDoc?.sellerRef,
                                          ),
                                        );
                                        _model.theChat2 =
                                            await actions.getChatDoc(
                                          _model.userquery2?.toList(),
                                          _model.sellerquery2?.toList(),
                                        );

                                        context.pushNamed(
                                          'chat_Details',
                                          queryParameters: {
                                            'chatRef': serializeParam(
                                              _model.theChat2,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'chatRef': _model.theChat2,
                                          },
                                        );
                                      } else {
                                        _model.commonExist =
                                            await actions.commonExist(
                                          _model.userquery?.toList(),
                                          _model.sellerquery?.toList(),
                                        );
                                        if (!_model.commonExist!) {
                                          var chatsRecordReference3 =
                                              ChatsRecord.collection.doc();
                                          await chatsRecordReference3.set({
                                            ...createChatsRecordData(
                                              from: currentUserReference,
                                              to: widget.itemDoc?.sellerRef,
                                              userA: currentUserReference,
                                              userB: widget.itemDoc?.sellerRef,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'sendTime': FieldValue
                                                    .serverTimestamp(),
                                                'users': [currentUserReference],
                                              },
                                            ),
                                          });
                                          _model.newchat2 =
                                              ChatsRecord.getDocumentFromData({
                                            ...createChatsRecordData(
                                              from: currentUserReference,
                                              to: widget.itemDoc?.sellerRef,
                                              userA: currentUserReference,
                                              userB: widget.itemDoc?.sellerRef,
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'sendTime': DateTime.now(),
                                                'users': [currentUserReference],
                                              },
                                            ),
                                          }, chatsRecordReference3);
                                          unawaited(
                                            () async {
                                              await _model.newchat2!.reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'users':
                                                        FieldValue.arrayUnion([
                                                      widget.itemDoc?.sellerRef
                                                    ]),
                                                  },
                                                ),
                                              });
                                            }(),
                                          );
                                          await Future.delayed(const Duration(
                                              milliseconds: 1000));
                                          _model.userquery3 =
                                              await queryChatsRecordOnce(
                                            queryBuilder: (chatsRecord) =>
                                                chatsRecord.where(
                                              'users',
                                              arrayContains:
                                                  currentUserReference,
                                            ),
                                          );
                                          _model.sellerquery3 =
                                              await queryChatsRecordOnce(
                                            queryBuilder: (chatsRecord) =>
                                                chatsRecord.where(
                                              'users',
                                              arrayContains:
                                                  widget.itemDoc?.sellerRef,
                                            ),
                                          );
                                          _model.theChat3 =
                                              await actions.getChatDoc(
                                            _model.userquery3?.toList(),
                                            _model.sellerquery3?.toList(),
                                          );

                                          context.pushNamed(
                                            'chat_Details',
                                            queryParameters: {
                                              'chatRef': serializeParam(
                                                _model.theChat3,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'chatRef': _model.theChat3,
                                            },
                                          );
                                        } else {
                                          _model.theChat =
                                              await actions.getChatDoc(
                                            _model.userquery?.toList(),
                                            _model.sellerquery?.toList(),
                                          );

                                          context.pushNamed(
                                            'chat_Details',
                                            queryParameters: {
                                              'chatRef': serializeParam(
                                                _model.theChat,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'chatRef': _model.theChat,
                                            },
                                          );
                                        }
                                      }

                                      setState(() {});
                                    },
                                    text: 'Talk to Seller',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 60.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 20.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'saved': FieldValue.arrayUnion(
                                              [widget.itemDoc?.reference]),
                                        },
                                      ),
                                    });
                                  },
                                  text: 'Save Item',
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 60.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
}
