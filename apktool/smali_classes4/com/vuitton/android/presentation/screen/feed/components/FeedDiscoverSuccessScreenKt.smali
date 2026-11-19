.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p6

    move-object/from16 v2, p7

    move/from16 v4, p16

    move/from16 v5, p17

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x1254dde2

    move-object/from16 v7, p15

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v7, v4, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v4

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    and-int/lit8 v10, p18, 0x2

    if-eqz v10, :cond_2

    or-int/lit8 v7, v7, 0x30

    goto :goto_4

    :cond_2
    and-int/lit8 v13, v4, 0x30

    if-nez v13, :cond_5

    if-nez p1, :cond_3

    const/4 v13, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    :goto_2
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x20

    goto :goto_3

    :cond_4
    const/16 v13, 0x10

    :goto_3
    or-int/2addr v7, v13

    :cond_5
    :goto_4
    and-int/lit16 v13, v4, 0x180

    if-nez v13, :cond_7

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x100

    goto :goto_5

    :cond_6
    const/16 v13, 0x80

    :goto_5
    or-int/2addr v7, v13

    :cond_7
    and-int/lit16 v13, v4, 0xc00

    const/16 v16, 0x400

    if-nez v13, :cond_9

    move/from16 v13, p3

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x800

    goto :goto_6

    :cond_8
    move/from16 v17, v16

    :goto_6
    or-int v7, v7, v17

    goto :goto_7

    :cond_9
    move/from16 v13, p3

    :goto_7
    and-int/lit16 v14, v4, 0x6000

    const/16 v18, 0x2000

    if-nez v14, :cond_b

    move/from16 v14, p4

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x4000

    goto :goto_8

    :cond_a
    move/from16 v20, v18

    :goto_8
    or-int v7, v7, v20

    goto :goto_9

    :cond_b
    move/from16 v14, p4

    :goto_9
    const/high16 v20, 0x30000

    and-int v20, v4, v20

    move-object/from16 v15, p5

    if-nez v20, :cond_d

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/high16 v21, 0x20000

    goto :goto_a

    :cond_c
    const/high16 v21, 0x10000

    :goto_a
    or-int v7, v7, v21

    :cond_d
    const/high16 v21, 0x180000

    and-int v21, v4, v21

    if-nez v21, :cond_f

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/high16 v21, 0x100000

    goto :goto_b

    :cond_e
    const/high16 v21, 0x80000

    :goto_b
    or-int v7, v7, v21

    :cond_f
    const/high16 v21, 0xc00000

    and-int v21, v4, v21

    if-nez v21, :cond_11

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x800000

    goto :goto_c

    :cond_10
    const/high16 v21, 0x400000

    :goto_c
    or-int v7, v7, v21

    :cond_11
    const/high16 v21, 0x6000000

    and-int v21, v4, v21

    move-object/from16 v9, p8

    if-nez v21, :cond_13

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x4000000

    goto :goto_d

    :cond_12
    const/high16 v22, 0x2000000

    :goto_d
    or-int v7, v7, v22

    :cond_13
    const/high16 v22, 0x30000000

    and-int v22, v4, v22

    move-object/from16 v11, p9

    if-nez v22, :cond_15

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x20000000

    goto :goto_e

    :cond_14
    const/high16 v23, 0x10000000

    :goto_e
    or-int v7, v7, v23

    :cond_15
    and-int/lit8 v23, v5, 0x6

    move-object/from16 v8, p10

    if-nez v23, :cond_17

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, 0x4

    goto :goto_f

    :cond_16
    const/16 v24, 0x2

    :goto_f
    or-int v24, v5, v24

    goto :goto_10

    :cond_17
    move/from16 v24, v5

    :goto_10
    and-int/lit8 v25, v5, 0x30

    move-object/from16 v12, p11

    if-nez v25, :cond_19

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    const/16 v26, 0x20

    goto :goto_11

    :cond_18
    const/16 v26, 0x10

    :goto_11
    or-int v24, v24, v26

    :cond_19
    and-int/lit16 v4, v5, 0x180

    if-nez v4, :cond_1b

    move-object/from16 v4, p12

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    const/16 v17, 0x100

    goto :goto_12

    :cond_1a
    const/16 v17, 0x80

    :goto_12
    or-int v24, v24, v17

    goto :goto_13

    :cond_1b
    move-object/from16 v4, p12

    :goto_13
    and-int/lit16 v4, v5, 0xc00

    if-nez v4, :cond_1d

    move-object/from16 v4, p13

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/16 v16, 0x800

    :cond_1c
    or-int v24, v24, v16

    goto :goto_14

    :cond_1d
    move-object/from16 v4, p13

    :goto_14
    and-int/lit16 v4, v5, 0x6000

    if-nez v4, :cond_1f

    move-object/from16 v4, p14

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    const/16 v18, 0x4000

    :cond_1e
    or-int v24, v24, v18

    :goto_15
    move/from16 v4, v24

    goto :goto_16

    :cond_1f
    move-object/from16 v4, p14

    goto :goto_15

    :goto_16
    const v16, 0x12492493

    and-int v5, v7, v16

    const v8, 0x12492492

    if-ne v5, v8, :cond_21

    and-int/lit16 v5, v4, 0x2493

    const/16 v8, 0x2492

    if-eq v5, v8, :cond_20

    goto :goto_17

    :cond_20
    const/4 v5, 0x0

    goto :goto_18

    :cond_21
    :goto_17
    const/4 v5, 0x1

    :goto_18
    and-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v10, :cond_22

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v8, v5

    goto :goto_19

    :cond_22
    move-object/from16 v8, p1

    :goto_19
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    sget-object v10, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v9

    const/high16 v17, 0x380000

    move-object/from16 p1, v8

    and-int v8, v7, v17

    const/high16 v11, 0x100000

    if-ne v8, v11, :cond_23

    const/4 v8, 0x1

    goto :goto_1a

    :cond_23
    const/4 v8, 0x0

    :goto_1a
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move/from16 v17, v8

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_24

    if-ne v11, v8, :cond_25

    :cond_24
    new-instance v24, Lcom/vuitton/android/presentation/compose/NestedScroll;

    new-instance v11, Llx;

    const/4 v12, 0x0

    invoke-direct {v11, v9, v1, v0, v12}, Llx;-><init>(ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;I)V

    new-instance v9, Lew;

    const/16 v12, 0x1b

    invoke-direct {v9, v12}, Lew;-><init>(I)V

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    invoke-direct/range {v24 .. v29}, Lcom/vuitton/android/presentation/compose/NestedScroll;-><init>(FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v11, v24

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v11, Lcom/vuitton/android/presentation/compose/NestedScroll;

    and-int/lit8 v9, v7, 0xe

    const/4 v12, 0x4

    if-ne v9, v12, :cond_26

    const/4 v12, 0x1

    goto :goto_1b

    :cond_26
    const/4 v12, 0x0

    :goto_1b
    const/high16 v17, 0x1c00000

    and-int v0, v7, v17

    move/from16 v17, v12

    const/high16 v12, 0x800000

    if-ne v0, v12, :cond_27

    const/4 v12, 0x1

    goto :goto_1c

    :cond_27
    const/4 v12, 0x0

    :goto_1c
    or-int v0, v17, v12

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move/from16 v17, v0

    const/4 v0, 0x0

    if-nez v17, :cond_28

    if-ne v12, v8, :cond_29

    :cond_28
    new-instance v12, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$1$1;

    invoke-direct {v12, v1, v2, v0}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v12, v6}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    sget-object v12, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v12, v12, v17

    const/4 v0, 0x1

    if-eq v12, v0, :cond_2b

    const/4 v0, 0x2

    if-ne v12, v0, :cond_2a

    const v0, 0x2f6bef92

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_2a
    const/4 v0, 0x0

    const v1, 0x2f6bdbdb

    invoke-static {v6, v1, v0}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2b
    const/4 v0, 0x0

    const v12, 0x2f6be5cc

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_2d

    if-ne v0, v8, :cond_2c

    goto :goto_1e

    :cond_2c
    const/4 v2, 0x0

    goto :goto_1f

    :cond_2d
    :goto_1e
    new-instance v0, Lmx;

    const/4 v2, 0x0

    invoke-direct {v0, v10, v2}, Lmx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1f
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v6, v9}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->c(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v9, :cond_2f

    if-ne v2, v8, :cond_2e

    goto :goto_20

    :cond_2e
    const/4 v9, 0x0

    goto :goto_21

    :cond_2f
    :goto_20
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$3$1;

    const/4 v9, 0x0

    invoke-direct {v2, v10, v9}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$3$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_21
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "FeedDiscoverSuccessScreen"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v11, v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v6, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v2

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    and-int/lit16 v9, v7, 0x1c00

    const/16 v11, 0x800

    if-ne v9, v11, :cond_30

    const/4 v9, 0x1

    goto :goto_22

    :cond_30
    const/4 v9, 0x0

    :goto_22
    or-int/2addr v2, v9

    and-int/lit8 v9, v7, 0x70

    const/16 v11, 0x20

    if-ne v9, v11, :cond_31

    const/4 v9, 0x1

    goto :goto_23

    :cond_31
    const/4 v9, 0x0

    :goto_23
    or-int/2addr v2, v9

    const v9, 0xe000

    and-int v11, v7, v9

    move/from16 v17, v9

    const/16 v9, 0x4000

    if-ne v11, v9, :cond_32

    const/4 v11, 0x1

    goto :goto_24

    :cond_32
    const/4 v11, 0x0

    :goto_24
    or-int/2addr v2, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v7

    const/high16 v9, 0x20000

    if-ne v11, v9, :cond_33

    const/4 v9, 0x1

    goto :goto_25

    :cond_33
    const/4 v9, 0x0

    :goto_25
    or-int/2addr v2, v9

    and-int v9, v4, v17

    const/16 v11, 0x4000

    if-ne v9, v11, :cond_34

    const/4 v9, 0x1

    goto :goto_26

    :cond_34
    const/4 v9, 0x0

    :goto_26
    or-int/2addr v2, v9

    const/high16 v9, 0x70000000

    and-int/2addr v9, v7

    const/high16 v11, 0x20000000

    if-ne v9, v11, :cond_35

    const/4 v9, 0x1

    goto :goto_27

    :cond_35
    const/4 v9, 0x0

    :goto_27
    or-int/2addr v2, v9

    const/high16 v9, 0xe000000

    and-int/2addr v9, v7

    const/high16 v11, 0x4000000

    if-ne v9, v11, :cond_36

    const/4 v9, 0x1

    goto :goto_28

    :cond_36
    const/4 v9, 0x0

    :goto_28
    or-int/2addr v2, v9

    and-int/lit8 v9, v4, 0xe

    const/4 v11, 0x4

    if-ne v9, v11, :cond_37

    const/4 v9, 0x1

    goto :goto_29

    :cond_37
    const/4 v9, 0x0

    :goto_29
    or-int/2addr v2, v9

    and-int/lit8 v9, v4, 0x70

    const/16 v11, 0x20

    if-ne v9, v11, :cond_38

    const/4 v9, 0x1

    goto :goto_2a

    :cond_38
    const/4 v9, 0x0

    :goto_2a
    or-int/2addr v2, v9

    and-int/lit16 v9, v4, 0x1c00

    const/16 v11, 0x800

    if-ne v9, v11, :cond_39

    const/4 v9, 0x1

    goto :goto_2b

    :cond_39
    const/4 v9, 0x0

    :goto_2b
    or-int/2addr v2, v9

    and-int/lit16 v4, v4, 0x380

    const/16 v9, 0x100

    if-ne v4, v9, :cond_3a

    const/4 v9, 0x1

    goto :goto_2c

    :cond_3a
    const/4 v9, 0x0

    :goto_2c
    or-int/2addr v2, v9

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_3c

    if-ne v4, v8, :cond_3b

    goto :goto_2d

    :cond_3b
    move-object/from16 v12, p1

    move-object/from16 p1, v0

    move-object v0, v6

    move/from16 v19, v7

    goto :goto_2e

    :cond_3c
    :goto_2d
    new-instance v2, Lnx;

    move-object/from16 v8, p1

    move-object/from16 v17, p12

    move-object/from16 v16, p13

    move-object/from16 v11, p14

    move-object/from16 p1, v0

    move-object v0, v6

    move/from16 v19, v7

    move-object/from16 v18, v10

    move v9, v14

    move-object v10, v15

    move/from16 v7, p3

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object v6, v5

    move-wide v4, v12

    move-object/from16 v13, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v18}, Lnx;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;JLandroid/content/Context;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;)V

    move-object v12, v8

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v2

    :goto_2e
    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v2, v19, 0x3

    and-int/lit8 v10, v2, 0x70

    const/16 v11, 0x1fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v9

    move-object v2, v12

    goto :goto_2f

    :cond_3d
    move-object v0, v6

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    :goto_2f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3e

    move-object v1, v0

    new-instance v0, Lox;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v30, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lox;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v1, v30

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3e
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/lazy/LazyListState;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->j()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->d()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->d()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
