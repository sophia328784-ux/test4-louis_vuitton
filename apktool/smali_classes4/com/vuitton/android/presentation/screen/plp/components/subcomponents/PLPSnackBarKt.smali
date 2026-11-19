.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Landroidx/compose/material3/SnackbarHostState;Landroidx/paging/compose/LazyPagingItems;ZLkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x57cfb14b

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v0, v8, 0x6

    const/4 v10, 0x4

    if-nez v0, :cond_1

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    and-int/lit8 v2, v8, 0x30

    if-nez v2, :cond_4

    and-int/lit8 v2, v8, 0x40

    if-nez v2, :cond_2

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_3

    :cond_3
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v0, v2

    :cond_4
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v0, v0, 0x180

    :cond_5
    move/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v8, 0x180

    if-nez v3, :cond_5

    move/from16 v3, p2

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v0, v4

    :goto_5
    and-int/lit16 v4, v8, 0xc00

    if-nez v4, :cond_9

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x800

    goto :goto_6

    :cond_8
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v0, v4

    :cond_9
    and-int/lit16 v4, v8, 0x6000

    move-object/from16 v12, p4

    if-nez v4, :cond_b

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x4000

    goto :goto_7

    :cond_a
    const/16 v4, 0x2000

    :goto_7
    or-int/2addr v0, v4

    :cond_b
    const/high16 v4, 0x30000

    and-int/2addr v4, v8

    if-nez v4, :cond_d

    move-object/from16 v4, p5

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/high16 v13, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v13, 0x10000

    :goto_8
    or-int/2addr v0, v13

    :goto_9
    move v13, v0

    goto :goto_a

    :cond_d
    move-object/from16 v4, p5

    goto :goto_9

    :goto_a
    const v0, 0x12493

    and-int/2addr v0, v13

    const v14, 0x12492

    const/4 v15, 0x0

    if-eq v0, v14, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    move v0, v15

    :goto_b
    and-int/lit8 v14, v13, 0x1

    invoke-virtual {v9, v14, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v2, :cond_f

    move v14, v15

    goto :goto_c

    :cond_f
    move v14, v3

    :goto_c
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-static {v9}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v0

    iget-object v0, v0, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_13

    const v0, 0x4d9dbb4e    # 3.30787264E8f

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v5, v13, 0xe

    if-ne v5, v10, :cond_10

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    move v5, v15

    :goto_d
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_11

    if-ne v10, v11, :cond_12

    :cond_11
    new-instance v10, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt$PLPSnackBar$1$1;

    const/4 v5, 0x0

    invoke-direct {v10, v1, v3, v2, v5}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt$PLPSnackBar$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_13
    const v0, 0x4da268cd    # 3.40597152E8f

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    invoke-virtual {v6}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object v0

    iget-object v0, v0, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_18

    invoke-virtual {v6}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v0

    if-lez v0, :cond_18

    if-nez v14, :cond_18

    const v0, 0x4da401db    # 3.43948128E8f

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/high16 v0, 0x70000

    and-int/2addr v0, v13

    const/high16 v5, 0x20000

    if-ne v0, v5, :cond_14

    const/4 v0, 0x1

    goto :goto_f

    :cond_14
    move v0, v15

    :goto_f
    and-int/lit8 v5, v13, 0xe

    const/4 v15, 0x4

    if-ne v5, v15, :cond_15

    const/4 v5, 0x1

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    :goto_10
    or-int/2addr v0, v5

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_16

    if-ne v5, v11, :cond_17

    :cond_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt$PLPSnackBar$2$1;

    const/4 v5, 0x0

    move-object/from16 v17, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt$PLPSnackBar$2$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v2, v4

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :cond_17
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_18
    move v0, v15

    const v1, 0x4da9e6ed    # 3.56310432E8f

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    and-int/lit8 v3, v13, 0xe

    const/4 v15, 0x4

    if-ne v3, v15, :cond_19

    const/4 v3, 0x1

    goto :goto_12

    :cond_19
    move v3, v0

    :goto_12
    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v13

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_1a

    const/4 v15, 0x1

    goto :goto_13

    :cond_1a
    move v15, v0

    :goto_13
    or-int v0, v1, v15

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1b

    if-ne v1, v11, :cond_1c

    :cond_1b
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt$PLPSnackBar$3$1;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object v1, v7

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSnackBarKt$PLPSnackBar$3$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_1c
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move v3, v14

    goto :goto_14

    :cond_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v0, Lrp;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v2, v6

    move v7, v8

    move-object/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lrp;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/paging/compose/LazyPagingItems;ZLkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
