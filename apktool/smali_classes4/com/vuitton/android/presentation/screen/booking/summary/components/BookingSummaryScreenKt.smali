.class public abstract Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;",
        "revealedItemId",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    move/from16 v12, p10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x30b0ec94

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    and-int/lit8 v2, v12, 0x30

    if-nez v2, :cond_2

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    :cond_2
    and-int/lit16 v2, v12, 0x180

    if-nez v2, :cond_4

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x100

    goto :goto_2

    :cond_3
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    :cond_4
    and-int/lit8 v2, p11, 0x8

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v3, p3

    goto :goto_4

    :cond_5
    move-object/from16 v3, p3

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_3

    :cond_6
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    :goto_4
    and-int/lit16 v4, v12, 0x6000

    move-object/from16 v5, p4

    if-nez v4, :cond_8

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x4000

    goto :goto_5

    :cond_7
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v0, v4

    :cond_8
    const/high16 v4, 0x30000

    and-int/2addr v4, v12

    if-nez v4, :cond_a

    move-object/from16 v4, p5

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/high16 v6, 0x20000

    goto :goto_6

    :cond_9
    const/high16 v6, 0x10000

    :goto_6
    or-int/2addr v0, v6

    goto :goto_7

    :cond_a
    move-object/from16 v4, p5

    :goto_7
    const/high16 v6, 0x180000

    and-int/2addr v6, v12

    move-object/from16 v7, p6

    if-nez v6, :cond_c

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v6, 0x100000

    goto :goto_8

    :cond_b
    const/high16 v6, 0x80000

    :goto_8
    or-int/2addr v0, v6

    :cond_c
    const/high16 v6, 0xc00000

    and-int/2addr v6, v12

    if-nez v6, :cond_e

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/high16 v6, 0x800000

    goto :goto_9

    :cond_d
    const/high16 v6, 0x400000

    :goto_9
    or-int/2addr v0, v6

    :cond_e
    const/high16 v6, 0x6000000

    and-int/2addr v6, v12

    if-nez v6, :cond_10

    move-object/from16 v6, p8

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/high16 v8, 0x4000000

    goto :goto_a

    :cond_f
    const/high16 v8, 0x2000000

    :goto_a
    or-int/2addr v0, v8

    goto :goto_b

    :cond_10
    move-object/from16 v6, p8

    :goto_b
    const v8, 0x2492493

    and-int/2addr v8, v0

    const v14, 0x2492492

    if-eq v8, v14, :cond_11

    const/4 v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    :goto_c
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v13, v14, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x3

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_13

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_12

    new-instance v2, Llg;

    invoke-direct {v2, v8}, Llg;-><init>(I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function0;

    goto :goto_d

    :cond_13
    move-object v2, v3

    :goto_d
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    if-eqz v3, :cond_14

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    goto :goto_e

    :cond_14
    const/4 v3, 0x0

    :goto_e
    move/from16 v16, v8

    if-eqz v3, :cond_15

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_15

    const/4 v8, 0x1

    goto :goto_f

    :cond_15
    const/4 v8, 0x0

    :goto_f
    const v15, 0x7f140473

    invoke-static {v13, v15}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    move/from16 v18, v0

    const v0, 0x7f140336

    invoke-static {v13, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    shr-int/lit8 v16, v18, 0x3

    move-object/from16 p3, v0

    and-int/lit8 v0, v16, 0x70

    move-object/from16 v16, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v10, v13, v0, v2}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "BookingSummaryScreen"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_16

    if-ne v2, v14, :cond_17

    :cond_16
    new-instance v2, La4;

    const/16 v1, 0x11

    invoke-direct {v2, v15, v1}, La4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-wide/from16 v19, v0

    iget-wide v0, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    new-instance v2, Lqd;

    move-wide/from16 v21, v0

    const/4 v0, 0x6

    invoke-direct {v2, v0, v15, v10}, Lqd;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const v0, -0x71ea1bb0

    invoke-static {v0, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    new-instance v0, Lrg;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v3, v11, v1}, Lrg;-><init>(ZLjava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    const v1, -0x43d66c91

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    new-instance v0, Lg0;

    const/16 v1, 0xe

    invoke-direct {v0, v9, v1}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, -0x15c2bd72

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    new-instance v0, Lc4;

    move-object v1, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v8}, Lc4;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Z)V

    const v1, 0xe06bde5

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    const v26, 0x30000db0

    const/16 v27, 0x130

    move-object/from16 v25, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    const/16 v17, 0x0

    move-object/from16 v16, v18

    const/16 v18, 0x0

    const/16 v23, 0x0

    invoke-static/range {v13 .. v27}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v2

    goto :goto_10

    :cond_18
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v4, v3

    :goto_10
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_19

    new-instance v0, Lsg;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v2, v9

    move-object v3, v10

    move-object v8, v11

    move v10, v12

    move-object/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lsg;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
