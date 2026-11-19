.class public abstract Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u00a8\u0006\t\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;",
        "currentCertificate",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lkotlin/Function0;",
        "",
        "currentOnBackPressed",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p8

    move-object/from16 v4, p9

    move-object/from16 v7, p11

    move-object/from16 v12, p12

    const-string v5, "CertificateComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x763d515a

    move-object/from16 v8, p14

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    or-int/lit8 v8, p15, 0x6

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_0

    :cond_1
    const/16 v9, 0x10

    :goto_0
    or-int/2addr v8, v9

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/16 v11, 0x80

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_1

    :cond_2
    move v9, v11

    :goto_1
    or-int/2addr v8, v9

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/16 v16, 0x400

    if-eqz v9, :cond_3

    const/16 v9, 0x800

    goto :goto_2

    :cond_3
    move/from16 v9, v16

    :goto_2
    or-int/2addr v8, v9

    move-object/from16 v9, p4

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x4000

    goto :goto_3

    :cond_4
    const/16 v17, 0x2000

    :goto_3
    or-int v8, v8, v17

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/high16 v17, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v17, 0x10000

    :goto_4
    or-int v8, v8, v17

    move-object/from16 v13, p6

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/high16 v17, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v17, 0x80000

    :goto_5
    or-int v8, v8, v17

    move-object/from16 v10, p7

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v18, 0x400000

    :goto_6
    or-int v8, v8, v18

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_7

    :cond_8
    const/high16 v18, 0x2000000

    :goto_7
    or-int v8, v8, v18

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x20000000

    goto :goto_8

    :cond_9
    const/high16 v18, 0x10000000

    :goto_8
    or-int v8, v8, v18

    move-object/from16 v18, v0

    move-object/from16 v0, p10

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x4

    goto :goto_9

    :cond_a
    const/16 v19, 0x2

    :goto_9
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x20

    goto :goto_a

    :cond_b
    const/16 v20, 0x10

    :goto_a
    or-int v19, v19, v20

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v11, 0x100

    :cond_c
    or-int v11, v19, v11

    move-object/from16 v0, p13

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v16, 0x800

    :cond_d
    or-int v11, v11, v16

    const v16, 0x12492493

    and-int v0, v8, v16

    const v7, 0x12492492

    const/16 v29, 0x1

    if-ne v0, v7, :cond_f

    and-int/lit16 v0, v11, 0x493

    const/16 v7, 0x492

    if-eq v0, v7, :cond_e

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v0, v29

    :goto_c
    and-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v7, v8, 0x70

    const/16 v12, 0x20

    if-eq v7, v12, :cond_10

    const/4 v12, 0x0

    :goto_d
    move-object/from16 v24, v0

    goto :goto_e

    :cond_10
    move/from16 v12, v29

    goto :goto_d

    :goto_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    move/from16 v16, v12

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v13, 0x0

    if-nez v16, :cond_11

    if-ne v0, v12, :cond_12

    :cond_11
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$1$1;

    invoke-direct {v0, v2, v13}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v13, 0x20

    if-eq v7, v13, :cond_13

    const/4 v13, 0x0

    goto :goto_f

    :cond_13
    move/from16 v13, v29

    :goto_f
    move-object/from16 v26, v5

    and-int/lit16 v5, v8, 0x1c00

    move/from16 v27, v7

    const/16 v7, 0x800

    if-ne v5, v7, :cond_14

    move/from16 v5, v29

    goto :goto_10

    :cond_14
    const/4 v5, 0x0

    :goto_10
    or-int/2addr v5, v13

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_15

    if-ne v7, v12, :cond_16

    :cond_15
    new-instance v7, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$2$1;

    const/4 v5, 0x0

    invoke-direct {v7, v2, v1, v5}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_17

    new-instance v30, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    const/16 v45, 0x3fff

    const/16 v46, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v30 .. v46}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v30 .. v30}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v0, Landroidx/compose/runtime/MutableState;

    const/4 v5, 0x7

    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-static {v13, v5, v6, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v1

    invoke-static {v13, v5, v6, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v28

    invoke-static {v13, v5, v6, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v30

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v6}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-interface {v2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v16

    new-instance v17, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v44, 0xfff

    const/16 v45, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v31, v17

    invoke-direct/range {v31 .. v45}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v18, 0x0

    move-object/from16 v19, v6

    invoke-static/range {v16 .. v21}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    move v7, v11

    invoke-static {v4, v6}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-static {v6}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v4

    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v4

    float-to-int v4, v4

    move/from16 v16, v4

    invoke-static {v6}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v4

    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v4

    float-to-int v4, v4

    move-object v10, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;

    move/from16 v9, v27

    move-object/from16 v27, v0

    move v0, v9

    move/from16 v9, v16

    move/from16 v16, v8

    move v8, v9

    move v9, v4

    move-object v4, v6

    move/from16 v18, v7

    move-object/from16 v17, v13

    move-object/from16 v13, v26

    move-object/from16 v6, v28

    move-object/from16 v7, p11

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/certificates/components/list/a;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v31, v6

    move-object/from16 v32, v10

    const v6, 0x418d13de

    invoke-static {v6, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v12, :cond_18

    invoke-static {v4}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v7

    :cond_18
    check-cast v7, Landroidx/compose/material3/SnackbarHostState;

    const/16 v10, 0x20

    if-eq v0, v10, :cond_19

    const/4 v11, 0x0

    goto :goto_11

    :cond_19
    move/from16 v11, v29

    :goto_11
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    or-int v11, v11, v19

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v11, :cond_1a

    if-ne v10, v12, :cond_1b

    :cond_1a
    new-instance v10, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$3$1;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v7, v6, v11}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateComposableKt$CertificateComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v13, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Error;

    const/4 v13, 0x6

    if-eqz v10, :cond_1c

    const v6, 0x5689f468

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v6, v16, 0x15

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v13

    invoke-static {v5, v15, v4, v6}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateErrorScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    move/from16 v33, v0

    move-object/from16 v16, v1

    move v15, v8

    move v2, v9

    move v1, v10

    move-object v0, v12

    move/from16 v35, v13

    move/from16 p0, v18

    move-object/from16 v3, v24

    const/16 v14, 0x20

    move-object v12, v4

    goto/16 :goto_17

    :cond_1c
    const/4 v10, 0x0

    const/16 v19, 0x3

    instance-of v11, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Loading;

    if-eqz v11, :cond_1d

    const v6, 0x568cd9fc

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v5, v4, v13}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateLoadingScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_1d
    instance-of v6, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    if-eqz v6, :cond_2a

    const v6, 0x568f7365

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    iget-object v10, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1e

    const v6, 0x56910038

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v6, v16, 0x3

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v13

    invoke-static {v5, v3, v4, v6}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateEmptyScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v33, v0

    move-object/from16 v16, v1

    move v15, v8

    move v2, v9

    move v1, v10

    move-object v0, v12

    move/from16 v35, v13

    move/from16 p0, v18

    move-object/from16 v3, v24

    const/16 v14, 0x20

    move-object v12, v4

    goto/16 :goto_16

    :cond_1e
    const/4 v10, 0x0

    const v11, 0x5693dc1c

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v11, 0x70000

    and-int v10, v16, v11

    move/from16 v17, v11

    const/high16 v11, 0x20000

    if-ne v10, v11, :cond_1f

    move/from16 v10, v29

    goto :goto_13

    :cond_1f
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_21

    if-ne v11, v12, :cond_20

    goto :goto_14

    :cond_20
    move-object/from16 v15, v27

    goto :goto_15

    :cond_21
    :goto_14
    new-instance v11, Ln0;

    const/16 v10, 0xf

    move-object/from16 v15, v27

    invoke-direct {v11, v14, v1, v15, v10}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v11, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v10, v16, 0x6

    const v20, 0xe000

    and-int v10, v10, v20

    const/16 v20, 0x1b6

    or-int v10, v20, v10

    shl-int/lit8 v16, v16, 0x3

    and-int v16, v16, v17

    or-int v10, v10, v16

    shl-int/lit8 v16, v18, 0x15

    const/high16 v17, 0x1c00000

    and-int v16, v16, v17

    or-int v10, v10, v16

    shl-int/lit8 v16, v18, 0xf

    const/high16 v17, 0xe000000

    and-int v16, v16, v17

    or-int v10, v10, v16

    move/from16 v33, v0

    move-object/from16 v16, v1

    move v2, v9

    move-object v9, v11

    move-object v0, v12

    move/from16 v35, v13

    move-object/from16 v27, v15

    move/from16 p0, v18

    const/4 v1, 0x0

    const/16 v14, 0x20

    move-object/from16 v11, p13

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move v15, v8

    move v13, v10

    move-object/from16 v8, p4

    move-object/from16 v10, p10

    move-object v7, v3

    move-object/from16 v3, v24

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/certificates/components/list/CertificateScreenKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    invoke-virtual/range {v16 .. v16}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v4

    if-eqz v4, :cond_22

    const v4, 0x56a083da

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v4, 0x7f140319

    invoke-static {v12, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    new-instance v23, Lr;

    const/16 v28, 0x6

    move-object/from16 v25, p6

    move-object/from16 v26, p7

    move-object/from16 v24, v16

    invoke-direct/range {v23 .. v28}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v4, v23

    const v5, -0x7e265309

    invoke-static {v5, v4, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    sget v4, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v4, v4, 0x9

    const/high16 v5, 0x6000000

    or-int v27, v4, v5

    const/16 v28, 0xf5

    move-object/from16 v19, v16

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v26, v12

    invoke-static/range {v16 .. v28}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_22
    const v4, 0x56aaf55c

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    and-int/lit8 v4, p0, 0x70

    if-ne v4, v14, :cond_23

    move/from16 v4, v29

    goto :goto_19

    :cond_23
    move v4, v1

    :goto_19
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_25

    if-ne v5, v0, :cond_24

    goto :goto_1a

    :cond_24
    move-object/from16 v4, p11

    goto :goto_1b

    :cond_25
    :goto_1a
    new-instance v5, Ltj;

    move-object/from16 v4, p11

    const/4 v6, 0x3

    invoke-direct {v5, v4, v15, v2, v6}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1b
    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move/from16 v2, v33

    if-eq v2, v14, :cond_26

    move v2, v1

    goto :goto_1c

    :cond_26
    move/from16 v2, v29

    :goto_1c
    move/from16 v5, p0

    and-int/lit16 v5, v5, 0x380

    const/16 v6, 0x100

    if-ne v5, v6, :cond_27

    move/from16 v1, v29

    :cond_27
    or-int/2addr v1, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_29

    if-ne v2, v0, :cond_28

    goto :goto_1d

    :cond_28
    move-object/from16 v5, p1

    move-object/from16 v6, p12

    goto :goto_1e

    :cond_29
    :goto_1d
    new-instance v2, Ltf;

    const/16 v0, 0x11

    move-object/from16 v5, p1

    move-object/from16 v6, p12

    invoke-direct {v2, v5, v6, v0}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int v13, v1, v0

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v3

    goto :goto_1f

    :cond_2a
    move-object v12, v4

    const/4 v1, 0x0

    const v0, 0x23d2e48d

    invoke-static {v12, v0, v1}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2b
    move-object/from16 v4, p11

    move-object v5, v2

    move-object v12, v6

    move-object/from16 v6, p12

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, v18

    :goto_1f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2c

    move-object v2, v0

    new-instance v0, Lal;

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    move/from16 v15, p15

    move-object/from16 v47, v2

    move-object v12, v4

    move-object v2, v5

    move-object v13, v6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v15}, Lal;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v2, v47

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v4, p4

    const-string v1, "CertificateProductRow"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x77ee37c6

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v5, v4, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v4

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    and-int/lit8 v6, v4, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v7, v4, 0x180

    if-nez v7, :cond_7

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v5, v8

    goto :goto_5

    :cond_7
    move-object/from16 v7, p2

    :goto_5
    and-int/lit16 v8, v5, 0x93

    const/16 v9, 0x92

    const/4 v10, 0x1

    if-eq v8, v9, :cond_8

    move v8, v10

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    and-int/lit8 v9, v5, 0x1

    invoke-virtual {v2, v9, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v3, :cond_9

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_9
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v13, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x0

    const/16 v16, 0xd

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v11, 0x36

    invoke-static {v8, v9, v2, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v8

    iget-wide v11, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_b

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_a

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v11, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const-string v11, "certificateList_attributeTitle_text"

    invoke-static {v1, v11}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    shr-int/lit8 v12, v5, 0x3

    and-int/lit8 v25, v12, 0xe

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-wide v7, v8

    move v12, v10

    const-wide/16 v9, 0x0

    move-object v6, v11

    const/4 v11, 0x0

    move v14, v12

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const-wide/16 v16, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v23, v22

    const/16 v22, 0x0

    move/from16 v24, v23

    move-object/from16 v23, v3

    move/from16 v3, v24

    move-object/from16 v24, v2

    move v2, v5

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-string v6, "certificateList_attributeValue_text"

    invoke-static {v1, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v25, v1, 0xe

    move-object/from16 v23, v5

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v24

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_c
    move-object v1, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_d

    move-object v1, v0

    new-instance v0, Ldl;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ldl;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final c(ILandroidx/compose/runtime/Composer;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const v0, -0x8c246df

    move-object/from16 v4, p1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p0, v0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v10, p4

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move v4, v6

    :goto_4
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v15, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v4, 0x7f140ca8

    invoke-static {v15, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lbl;

    invoke-direct {v4, v1, v2, v3, v6}, Lbl;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    const v5, -0x43691a20

    invoke-static {v5, v4, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    shl-int/lit8 v0, v0, 0x9

    const/high16 v4, 0x380000

    and-int/2addr v0, v4

    const/high16 v4, 0xc00000

    or-int v16, v0, v4

    const/16 v17, 0x0

    const/16 v18, 0xf37

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v18}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v0, Lcl;

    move/from16 v5, p0

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcl;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const v0, -0x685e75e

    move-object/from16 v4, p3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x93

    const/16 v5, 0x92

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    and-int/2addr v0, v6

    invoke-virtual {v15, v0, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f14057a

    invoke-static {v15, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lg1;

    const/16 v4, 0xb

    invoke-direct {v0, v2, v1, v3, v4}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v4, 0x673614ad

    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    const/16 v17, 0x30

    const/16 v18, 0x7fb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    goto :goto_4

    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v0, Lu;

    const/16 v5, 0x14

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
