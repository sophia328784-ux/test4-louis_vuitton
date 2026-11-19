.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/FeedHeaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/components/FeedHeaderKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ZLcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/Float;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v5, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2d41a4fe

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p12, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v2, v7

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v2, v7

    if-nez p3, :cond_3

    const/4 v8, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    :goto_3
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x800

    goto :goto_4

    :cond_4
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v2, v8

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x4000

    goto :goto_5

    :cond_5
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v2, v8

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_6
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v2, v10

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x100000

    goto :goto_7

    :cond_7
    const/high16 v11, 0x80000

    :goto_7
    or-int/2addr v2, v11

    move-object/from16 v11, p7

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/high16 v12, 0x800000

    goto :goto_8

    :cond_8
    const/high16 v12, 0x400000

    :goto_8
    or-int/2addr v2, v12

    move-object/from16 v12, p8

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/high16 v14, 0x4000000

    goto :goto_9

    :cond_9
    const/high16 v14, 0x2000000

    :goto_9
    or-int/2addr v2, v14

    move-object/from16 v14, p9

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/high16 v15, 0x20000000

    goto :goto_a

    :cond_a
    const/high16 v15, 0x10000000

    :goto_a
    or-int/2addr v2, v15

    move-object/from16 v15, p10

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_b

    :cond_b
    const/4 v3, 0x2

    :goto_b
    const v16, 0x12492493

    and-int v9, v2, v16

    const v7, 0x12492492

    const/4 v6, 0x1

    if-ne v9, v7, :cond_d

    and-int/lit8 v3, v3, 0x3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_c

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    move v3, v6

    :goto_d
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p12, 0x1

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_e

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_f
    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/presentation/screen/feed/components/FeedHeaderKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v6, :cond_11

    const/4 v7, 0x2

    if-ne v3, v7, :cond_10

    const v3, 0x1c93fa6f

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->f:J

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_10
    const/4 v3, 0x0

    const v1, 0x1c93e27b

    invoke-static {v0, v1, v3}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_11
    const v3, 0x1c93e823

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    iget-object v7, v6, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v7, Landroidx/compose/ui/graphics/Color;->a:J

    iget-object v6, v6, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->a:J

    const v9, 0x7f140a12

    invoke-static {v0, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    const v1, 0x7f140a13

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-nez p3, :cond_12

    const/4 v9, -0x1

    :goto_10
    move-wide/from16 v20, v3

    const/4 v3, -0x1

    goto :goto_11

    :cond_12
    sget-object v9, Lcom/vuitton/android/presentation/screen/feed/components/FeedHeaderKt$WhenMappings;->b:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v9, v9, v20

    goto :goto_10

    :goto_11
    if-eq v9, v3, :cond_15

    const/4 v3, 0x1

    if-eq v9, v3, :cond_14

    const/4 v4, 0x2

    if-ne v9, v4, :cond_13

    move v4, v3

    goto :goto_13

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_14
    :goto_12
    const/4 v4, 0x0

    goto :goto_13

    :cond_15
    const/4 v3, 0x1

    goto :goto_12

    :goto_13
    invoke-static {v4, v0, v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->c(ILandroidx/compose/runtime/Composer;Ljava/util/List;)Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    move-result-object v9

    iget-object v1, v9, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    and-int/lit16 v1, v2, 0x1c00

    const/16 v2, 0x800

    if-ne v1, v2, :cond_16

    goto :goto_14

    :cond_16
    const/4 v3, 0x0

    :goto_14
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_18

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_17

    goto :goto_15

    :cond_17
    move-object/from16 v4, p3

    goto :goto_16

    :cond_18
    :goto_15
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/components/FeedHeaderKt$FeedHeader$5$1;

    const/4 v1, 0x0

    move-object/from16 v4, p3

    invoke-direct {v2, v4, v9, v1}, Lcom/vuitton/android/presentation/screen/feed/components/FeedHeaderKt$FeedHeader$5$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-wide v14, v6

    new-instance v6, Ley;

    move-wide/from16 v16, v20

    move-object/from16 v20, v8

    move-wide/from16 v7, v16

    move-object/from16 v17, p0

    move-object/from16 v19, p9

    move-object/from16 v18, p10

    move-object/from16 v16, v10

    move-object/from16 v10, p1

    invoke-direct/range {v6 .. v20}, Ley;-><init>(JLcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZJLkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const v1, -0x74e241f7

    invoke-static {v1, v6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVFeedCompositionLocalProviderKt;->b(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_17

    :cond_19
    move-object/from16 v4, p3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_1a

    new-instance v0, Lzl;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lzl;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ZLcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/Float;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method
