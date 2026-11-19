.class public abstract Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;",
        "viewState",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x60daff80

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int v10, v0, v3

    and-int/lit16 v0, v10, 0x93

    const/16 v3, 0x92

    const/4 v5, 0x1

    if-eq v0, v3, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v3, v10, 0x1

    invoke-virtual {v8, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v3, v10, 0xe

    if-eq v3, v1, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move v6, v5

    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v13, 0x0

    if-nez v6, :cond_5

    if-ne v11, v12, :cond_6

    :cond_5
    new-instance v11, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferComposableKt$CertificateTransferComposable$1$1;

    invoke-direct {v11, v2, v13}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferComposableKt$CertificateTransferComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;->c:Lkotlin/Pair;

    iget-object v14, v14, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;->c:Lkotlin/Pair;

    iget-object v14, v14, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v14, Lkotlin/Pair;

    if-eqz v14, :cond_7

    iget-object v14, v14, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v14, v13

    :goto_5
    const-string v15, ""

    if-nez v14, :cond_8

    move-object v14, v15

    :cond_8
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;->c:Lkotlin/Pair;

    iget-object v4, v4, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v4, v13

    :goto_6
    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move-object v15, v4

    :goto_7
    invoke-interface {v7, v14, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v12, :cond_c

    invoke-static {v8}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v4

    :cond_c
    move-object v14, v4

    check-cast v14, Landroidx/compose/material3/SnackbarHostState;

    if-eq v3, v1, :cond_d

    const/4 v4, 0x0

    goto :goto_8

    :cond_d
    move v4, v5

    :goto_8
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v4, v15

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_e

    if-ne v15, v12, :cond_f

    :cond_e
    new-instance v15, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferComposableKt$CertificateTransferComposable$2$1;

    invoke-direct {v15, v2, v14, v6, v13}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferComposableKt$CertificateTransferComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v0, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;

    if-eq v3, v1, :cond_10

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    move v4, v5

    :goto_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_11

    if-ne v0, v12, :cond_12

    :cond_11
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferComposableKt$CertificateTransferComposable$3$1;

    const-string v5, "transferCertificate(Ljava/util/Map;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;

    const-string v4, "transferCertificate"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v0, v10, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v6, v0, 0x6

    move-object v5, v8

    move-object v4, v9

    move-object v2, v11

    move-object v1, v14

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferScreenKt;->b(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_a

    :cond_13
    move-object v5, v8

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v0, Lu;

    const/16 v2, 0x16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v1, p4

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lu;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
