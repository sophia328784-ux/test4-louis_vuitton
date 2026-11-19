.class public abstract Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x55348b7b

    move-object/from16 v2, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p11, v0

    move-object/from16 v12, p1

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v13, p2

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v15, p4

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x20000

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    move-object/from16 v2, p7

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v5, 0x400000

    :goto_7
    or-int/2addr v0, v5

    move-object/from16 v5, p8

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/high16 v6, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v6, 0x2000000

    :goto_8
    or-int/2addr v0, v6

    move-object/from16 v6, p9

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v16, 0x10000000

    :goto_9
    or-int v0, v0, v16

    const v16, 0x12492493

    and-int v14, v0, v16

    const v4, 0x12492492

    const/16 v19, 0x1

    if-eq v14, v4, :cond_a

    move/from16 v4, v19

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v10, v14, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;->o:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v4, v10}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v14

    check-cast v2, Landroid/app/Activity;

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/high16 v21, 0x70000

    and-int v11, v0, v21

    if-ne v11, v3, :cond_b

    move/from16 v3, v19

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_c

    if-ne v11, v12, :cond_d

    :cond_c
    new-instance v11, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$6$1;

    const/4 v3, 0x0

    invoke-direct {v11, v8, v3}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$6$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v3}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    and-int/lit8 v11, v0, 0xe

    const/4 v6, 0x4

    if-eq v11, v6, :cond_e

    const/4 v6, 0x0

    goto :goto_c

    :cond_e
    move/from16 v6, v19

    :goto_c
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v6, v6, v21

    move/from16 v21, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_f

    if-ne v0, v12, :cond_10

    :cond_f
    new-instance v0, Lvg;

    const/16 v6, 0xc

    invoke-direct {v0, v1, v14, v6}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-static {v3, v0, v10, v6}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    const/4 v6, 0x4

    if-eq v11, v6, :cond_11

    const/4 v6, 0x0

    goto :goto_d

    :cond_11
    move/from16 v6, v19

    :goto_d
    or-int v6, v20, v6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v6, v6, v20

    const/high16 v20, 0xe000000

    move-object/from16 v23, v0

    and-int v0, v21, v20

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_12

    move/from16 v0, v19

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    :goto_e
    or-int/2addr v0, v6

    const/high16 v1, 0x70000000

    and-int v1, v21, v1

    const/high16 v6, 0x20000000

    if-ne v1, v6, :cond_13

    move/from16 v1, v19

    goto :goto_f

    :cond_13
    const/4 v1, 0x0

    :goto_f
    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_15

    if-ne v1, v12, :cond_14

    goto :goto_10

    :cond_14
    const/high16 v13, 0x100000

    const/16 v22, 0x0

    move-object v0, v1

    move-object v15, v3

    move-object v5, v4

    move/from16 v8, v21

    move-object/from16 v1, p0

    goto :goto_11

    :cond_15
    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v15, v3

    move-object v3, v5

    move/from16 v8, v21

    const/high16 v13, 0x100000

    const/16 v22, 0x0

    move-object v5, v4

    move-object/from16 v4, p9

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v15, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;

    const/4 v6, 0x4

    if-eq v11, v6, :cond_16

    move/from16 v6, v22

    goto :goto_12

    :cond_16
    move/from16 v6, v19

    :goto_12
    and-int/lit16 v2, v8, 0x1c00

    const/16 v3, 0x800

    if-ne v2, v3, :cond_17

    move/from16 v2, v19

    goto :goto_13

    :cond_17
    move/from16 v2, v22

    :goto_13
    or-int/2addr v2, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_18

    if-ne v3, v12, :cond_19

    :cond_18
    new-instance v3, Ltf;

    const/16 v2, 0x13

    invoke-direct {v3, v1, v7, v2}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/high16 v2, 0x380000

    and-int/2addr v2, v8

    if-ne v2, v13, :cond_1a

    move/from16 v6, v19

    :goto_14
    const/4 v2, 0x4

    goto :goto_15

    :cond_1a
    move/from16 v6, v22

    goto :goto_14

    :goto_15
    if-eq v11, v2, :cond_1b

    move/from16 v2, v22

    goto :goto_16

    :cond_1b
    move/from16 v2, v19

    :goto_16
    or-int/2addr v2, v6

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_1c

    if-ne v4, v12, :cond_1d

    :cond_1c
    new-instance v4, Lq;

    const/16 v2, 0x18

    invoke-direct {v4, v9, v1, v14, v2}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    if-eq v11, v6, :cond_1e

    move/from16 v19, v22

    :cond_1e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v19, :cond_1f

    if-ne v2, v12, :cond_20

    :cond_1f
    new-instance v2, Lw1;

    const/16 v4, 0x15

    invoke-direct {v2, v1, v4}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, v23

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_21

    if-ne v5, v12, :cond_22

    :cond_21
    new-instance v5, Lw1;

    const/16 v4, 0x16

    invoke-direct {v5, v2, v4}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v2, v8, 0x3f0

    shl-int/lit8 v4, v8, 0x9

    const/high16 v5, 0x1c00000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    shl-int/lit8 v4, v8, 0x3

    and-int v4, v4, v20

    or-int v20, v2, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v17, p4

    move-object/from16 v18, p7

    move-object v13, v3

    move-object/from16 v19, v10

    move-object v10, v0

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanScreenKt;->a(Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_17

    :cond_23
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_24

    new-instance v0, Lik;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object v4, v7

    move-object v7, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lik;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method
