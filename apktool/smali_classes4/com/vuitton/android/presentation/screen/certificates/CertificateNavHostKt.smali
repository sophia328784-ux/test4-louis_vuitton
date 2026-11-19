.class public abstract Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;",
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v3, p0

    move/from16 v13, p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4c6d5e67    # 6.2224796E7f

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int v0, p12, v0

    move-object/from16 v4, p1

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    move-object/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v0, v8

    move-object/from16 v8, p4

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x4000

    goto :goto_4

    :cond_4
    const/16 v10, 0x2000

    :goto_4
    or-int/2addr v0, v10

    move-object/from16 v10, p5

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/high16 v14, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v14, 0x10000

    :goto_5
    or-int/2addr v0, v14

    move-object/from16 v14, p6

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v0, v0, v16

    move-object/from16 v9, p7

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/high16 v17, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v17, 0x400000

    :goto_7
    or-int v0, v0, v17

    move-object/from16 v2, p8

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v0, v0, v18

    move-object/from16 v15, p9

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v19, 0x10000000

    :goto_9
    or-int v0, v0, v19

    move-object/from16 v6, p10

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x4

    goto :goto_a

    :cond_a
    move/from16 v20, v1

    :goto_a
    const v21, 0x12492493

    and-int v11, v0, v21

    const v7, 0x12492492

    const/16 v22, 0x0

    const/16 v23, 0x1

    if-ne v11, v7, :cond_c

    and-int/lit8 v7, v20, 0x3

    if-eq v7, v1, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v1, v22

    goto :goto_c

    :cond_c
    :goto_b
    move/from16 v1, v23

    :goto_c
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v12, v7, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit16 v11, v0, 0x380

    const/16 v2, 0x100

    if-ne v11, v2, :cond_d

    move/from16 v2, v23

    goto :goto_d

    :cond_d
    move/from16 v2, v22

    :goto_d
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v2, v11

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move/from16 v21, v2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v21, :cond_e

    if-ne v11, v2, :cond_f

    :cond_e
    new-instance v11, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt$CertificateNavHost$1$1;

    const/4 v4, 0x0

    invoke-direct {v11, v13, v3, v4}, Lcom/vuitton/android/presentation/screen/certificates/CertificateNavHostKt$CertificateNavHost$1$1;-><init>(ZLandroidx/navigation/NavHostController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v7, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v21, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_10

    new-instance v4, Ljh;

    const/16 v7, 0x16

    invoke-direct {v4, v7}, Ljh;-><init>(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v24, v4

    check-cast v24, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_11

    new-instance v4, Ljh;

    const/16 v7, 0x17

    invoke-direct {v4, v7}, Ljh;-><init>(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v25, v4

    check-cast v25, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_12

    new-instance v4, Ljh;

    const/16 v7, 0x18

    invoke-direct {v4, v7}, Ljh;-><init>(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v26, v4

    check-cast v26, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_13

    new-instance v4, Ljh;

    const/16 v7, 0x19

    invoke-direct {v4, v7}, Ljh;-><init>(I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v27, v4

    check-cast v27, Lkotlin/jvm/functions/Function1;

    const v4, 0xe000

    and-int/2addr v4, v0

    const/16 v7, 0x4000

    if-ne v4, v7, :cond_14

    move/from16 v4, v23

    goto :goto_e

    :cond_14
    move/from16 v4, v22

    :goto_e
    and-int/lit8 v7, v0, 0x70

    const/16 v11, 0x20

    if-eq v7, v11, :cond_15

    move/from16 v7, v22

    goto :goto_f

    :cond_15
    move/from16 v7, v23

    :goto_f
    or-int/2addr v4, v7

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v0

    const/high16 v11, 0x20000

    if-ne v7, v11, :cond_16

    move/from16 v7, v23

    goto :goto_10

    :cond_16
    move/from16 v7, v22

    :goto_10
    or-int/2addr v4, v7

    const/high16 v7, 0x380000

    and-int/2addr v7, v0

    const/high16 v11, 0x100000

    if-ne v7, v11, :cond_17

    move/from16 v7, v23

    goto :goto_11

    :cond_17
    move/from16 v7, v22

    :goto_11
    or-int/2addr v4, v7

    and-int/lit16 v7, v0, 0x1c00

    const/16 v11, 0x800

    if-ne v7, v11, :cond_18

    move/from16 v7, v23

    goto :goto_12

    :cond_18
    move/from16 v7, v22

    :goto_12
    or-int/2addr v4, v7

    const/high16 v7, 0xe000000

    and-int/2addr v7, v0

    const/high16 v11, 0x4000000

    if-ne v7, v11, :cond_19

    move/from16 v7, v23

    goto :goto_13

    :cond_19
    move/from16 v7, v22

    :goto_13
    or-int/2addr v4, v7

    const/high16 v7, 0x70000000

    and-int/2addr v7, v0

    const/high16 v11, 0x20000000

    if-ne v7, v11, :cond_1a

    move/from16 v7, v23

    goto :goto_14

    :cond_1a
    move/from16 v7, v22

    :goto_14
    or-int/2addr v4, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v0

    const/high16 v11, 0x800000

    if-ne v7, v11, :cond_1b

    move/from16 v7, v23

    goto :goto_15

    :cond_1b
    move/from16 v7, v22

    :goto_15
    or-int/2addr v4, v7

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    and-int/lit8 v7, v20, 0xe

    const/4 v11, 0x4

    if-ne v7, v11, :cond_1c

    move/from16 v22, v23

    :cond_1c
    or-int v4, v4, v22

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_1d

    if-ne v7, v2, :cond_1e

    :cond_1d
    move v2, v0

    goto :goto_16

    :cond_1e
    move v14, v0

    goto :goto_17

    :goto_16
    new-instance v0, Lyl;

    move-object/from16 v7, p8

    move-object v11, v6

    move-object v4, v10

    move-object v10, v1

    move-object v6, v5

    move-object v1, v8

    move-object v5, v14

    move-object v8, v15

    move v14, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v11}, Lyl;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v7, v0

    :goto_17
    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const v0, 0x36d80030

    and-int/lit8 v1, v14, 0xe

    or-int v11, v1, v0

    move-object v10, v12

    const/16 v12, 0x43c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_1f
    move-object v10, v12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_20

    new-instance v0, Lzl;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move v3, v13

    invoke-direct/range {v0 .. v12}, Lzl;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
