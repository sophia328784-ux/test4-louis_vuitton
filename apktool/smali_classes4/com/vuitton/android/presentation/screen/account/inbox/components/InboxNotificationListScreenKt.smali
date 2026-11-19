.class public abstract Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "formattedDate",
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move/from16 v12, p12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0xd8ced08

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v12, 0x6

    const/4 v2, 0x4

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v12

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v4, v12

    :goto_1
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p1

    :goto_3
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_5

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_4

    :cond_4
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v4, v7

    goto :goto_5

    :cond_5
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v7, v12, 0xc00

    move/from16 v14, p3

    if-nez v7, :cond_7

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_6

    :cond_6
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v4, v7

    :cond_7
    and-int/lit16 v7, v12, 0x6000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_7

    :cond_8
    const/16 v8, 0x2000

    :goto_7
    or-int/2addr v4, v8

    goto :goto_8

    :cond_9
    move-object/from16 v7, p4

    :goto_8
    const/high16 v8, 0x30000

    and-int/2addr v8, v12

    if-nez v8, :cond_b

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v9, 0x10000

    :goto_9
    or-int/2addr v4, v9

    goto :goto_a

    :cond_b
    move-object/from16 v8, p5

    :goto_a
    const/high16 v9, 0x180000

    and-int/2addr v9, v12

    if-nez v9, :cond_d

    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/high16 v10, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v10, 0x80000

    :goto_b
    or-int/2addr v4, v10

    goto :goto_c

    :cond_d
    move-object/from16 v9, p6

    :goto_c
    const/high16 v10, 0xc00000

    and-int/2addr v10, v12

    if-nez v10, :cond_f

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x800000

    goto :goto_d

    :cond_e
    const/high16 v11, 0x400000

    :goto_d
    or-int/2addr v4, v11

    goto :goto_e

    :cond_f
    move-object/from16 v10, p7

    :goto_e
    const/high16 v11, 0x6000000

    and-int/2addr v11, v12

    if-nez v11, :cond_11

    move-object/from16 v11, p8

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x4000000

    goto :goto_f

    :cond_10
    const/high16 v13, 0x2000000

    :goto_f
    or-int/2addr v4, v13

    goto :goto_10

    :cond_11
    move-object/from16 v11, p8

    :goto_10
    const/high16 v25, 0x30000000

    and-int v13, v12, v25

    if-nez v13, :cond_13

    move-object/from16 v13, p9

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/high16 v15, 0x20000000

    goto :goto_11

    :cond_12
    const/high16 v15, 0x10000000

    :goto_11
    or-int/2addr v4, v15

    goto :goto_12

    :cond_13
    move-object/from16 v13, p9

    :goto_12
    and-int/lit8 v15, p13, 0x6

    if-nez v15, :cond_15

    move-object/from16 v15, p10

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    goto :goto_13

    :cond_14
    const/4 v2, 0x2

    :goto_13
    or-int v2, p13, v2

    goto :goto_14

    :cond_15
    move-object/from16 v15, p10

    move/from16 v2, p13

    :goto_14
    const v16, 0x12492493

    and-int v3, v4, v16

    const v1, 0x12492492

    if-ne v3, v1, :cond_17

    and-int/lit8 v1, v2, 0x3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    goto :goto_15

    :cond_16
    const/4 v1, 0x0

    goto :goto_16

    :cond_17
    :goto_15
    const/4 v1, 0x1

    :goto_16
    and-int/lit8 v2, v4, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    new-instance v13, Ll4;

    move-object/from16 v17, p0

    move-object/from16 v24, p9

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-direct/range {v13 .. v24}, Ll4;-><init>(ZLkotlin/jvm/functions/Function0;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;)V

    const v2, -0x7348cd69

    invoke-static {v2, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    shr-int/lit8 v2, v4, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int v26, v2, v25

    const/16 v27, 0xfd

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v25, v0

    move-object/from16 v23, v1

    move-object v14, v7

    invoke-static/range {v13 .. v27}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_17

    :cond_18
    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_19

    new-instance v0, Lf40;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lf40;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    const-string v1, "NotificationContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x1ba1d5c0

    move-object/from16 v7, p5

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v2, v6, 0x6

    if-nez v2, :cond_2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v6

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_4

    move-object/from16 v7, p1

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v2, v8

    goto :goto_3

    :cond_4
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_6

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x100

    goto :goto_4

    :cond_5
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v2, v8

    :cond_6
    and-int/lit16 v8, v6, 0xc00

    const/16 v9, 0x800

    if-nez v8, :cond_8

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    goto :goto_5

    :cond_7
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v2, v8

    :cond_8
    and-int/lit16 v8, v6, 0x6000

    const/16 v10, 0x4000

    if-nez v8, :cond_a

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v10

    goto :goto_6

    :cond_9
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v2, v8

    :cond_a
    and-int/lit16 v8, v2, 0x2493

    const/16 v11, 0x2492

    const/4 v12, 0x1

    if-eq v8, v11, :cond_b

    move v8, v12

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    :goto_7
    and-int/lit8 v11, v2, 0x1

    invoke-virtual {v13, v11, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_15

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v8, v14, v15, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const v11, 0xe000

    and-int/2addr v11, v2

    if-ne v11, v10, :cond_c

    move v10, v12

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_e

    if-ne v11, v14, :cond_d

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    new-instance v11, Lc40;

    const/4 v10, 0x0

    invoke-direct {v11, v5, v3, v10}, Lc40;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;I)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_a
    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v15, v2, 0x1c00

    if-ne v15, v9, :cond_f

    move v10, v12

    :cond_f
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v9, v10

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_10

    if-ne v10, v14, :cond_11

    :cond_10
    new-instance v10, Lc40;

    invoke-direct {v10, v4, v3, v12}, Lc40;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;I)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v8, v11, v10}, Landroidx/compose/foundation/ClickableKt;->f(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v8, v9, v10}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v9}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v11, 0x30

    invoke-static {v9, v10, v13, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v9

    iget-wide v10, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v13, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v15, :cond_14

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_12

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_12
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v9, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v8, v9, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v8}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->d:Ljava/lang/String;

    if-eqz v8, :cond_13

    goto :goto_c

    :cond_13
    move-object/from16 v8, v16

    :goto_c
    sget-object v9, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const v10, 0x7f0802a3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v18, 0x180

    const/16 v19, 0x7c8

    const/4 v10, 0x0

    move v14, v12

    const v12, 0x7f0802a3

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v20, v16

    const/16 v16, 0x0

    move-object v7, v1

    move/from16 v1, v20

    invoke-static/range {v7 .. v19}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->b:Ljava/lang/String;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->c:Ljava/lang/String;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->g:Ljava/util/Date;

    iget-boolean v12, v3, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->f:Z

    and-int/lit8 v14, v2, 0x70

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v13, v17

    invoke-static/range {v7 .. v14}, Lcom/vuitton/android/presentation/screen/account/inbox/components/InboxNotificationListScreenKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_16

    move-object v1, v0

    new-instance v0, Lb3;

    const/16 v7, 0xb

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Lb3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZLandroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    const-string v9, "NotificationContentRow"

    if-eqz v0, :cond_0

    invoke-static {v0, v9}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0xd716e26

    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v10, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v2, v8, 0x6

    and-int/lit8 v3, v8, 0x30

    move-object/from16 v11, p1

    if-nez v3, :cond_2

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int/2addr v2, v3

    :cond_2
    and-int/lit16 v3, v8, 0x180

    if-nez v3, :cond_4

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x100

    goto :goto_1

    :cond_3
    const/16 v3, 0x80

    :goto_1
    or-int/2addr v2, v3

    :cond_4
    and-int/lit16 v3, v8, 0xc00

    if-nez v3, :cond_6

    move-object/from16 v3, p3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x800

    goto :goto_2

    :cond_5
    const/16 v12, 0x400

    :goto_2
    or-int/2addr v2, v12

    goto :goto_3

    :cond_6
    move-object/from16 v3, p3

    :goto_3
    and-int/lit16 v12, v8, 0x6000

    if-nez v12, :cond_8

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x4000

    goto :goto_4

    :cond_7
    const/16 v12, 0x2000

    :goto_4
    or-int/2addr v2, v12

    :cond_8
    const/high16 v12, 0x30000

    and-int/2addr v12, v8

    if-nez v12, :cond_a

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    const/high16 v12, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v12, 0x10000

    :goto_5
    or-int/2addr v2, v12

    :cond_a
    move v12, v2

    const v2, 0x12493

    and-int/2addr v2, v12

    const v13, 0x12492

    if-eq v2, v13, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    and-int/lit8 v13, v12, 0x1

    invoke-virtual {v14, v13, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v13, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v13, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f1402f7

    invoke-static {v14, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_c

    if-ne v5, v4, :cond_e

    :cond_c
    invoke-static {v11}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_d

    :try_start_0
    const-string v2, "dd/MM"

    goto :goto_7

    :cond_d
    const-string v2, "MM/dd"

    :goto_7
    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const-string v2, ""

    :goto_8
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v5, Landroidx/compose/runtime/MutableState;

    if-eqz v7, :cond_f

    const v2, 0x76cec812

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->i:Landroidx/compose/ui/text/TextStyle;

    const/4 v15, 0x0

    :goto_9
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v28, v2

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    const v2, 0x76cece2b

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    goto :goto_9

    :goto_a
    and-int/lit16 v2, v12, 0x380

    const/16 v15, 0x100

    if-ne v2, v15, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    and-int/lit16 v15, v12, 0x1c00

    const/16 v1, 0x800

    if-ne v15, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v1, v2

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_12

    if-ne v2, v4, :cond_13

    :cond_12
    move-object v3, v0

    goto :goto_d

    :cond_13
    move-object v4, v5

    goto :goto_e

    :goto_d
    new-instance v0, Lk3;

    move-object v4, v5

    const/16 v5, 0xf

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v13, v1, v2, v0}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/IntrinsicSize;->Max:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/IntrinsicKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v3}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v15, 0x0

    invoke-static {v3, v5, v14, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 p6, v1

    iget-wide v1, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v10, :cond_1b

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_14

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v33, v4

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v0

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v8, 0x0

    invoke-static {v0, v7, v14, v8}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v14, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v10, :cond_1a

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v18, v10

    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    invoke-static {v14, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v8, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v14, v2, v14, v1}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-static {v9, v0, v6, v7}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v11

    move-object v6, v5

    if-nez p2, :cond_16

    const v8, 0x1a80133b

    const v10, 0x7f140b7f

    const/4 v5, 0x0

    invoke-static {v14, v8, v10, v14, v5}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    const v8, 0x1a801224

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v10, p2

    :goto_11
    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v17, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v23, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    const/16 v31, 0x6180

    const v32, 0x1aff8

    move-object/from16 v29, v14

    move-object/from16 v17, v15

    const-wide/16 v14, 0x0

    const/16 v19, 0x1

    const/16 v16, 0x0

    move-object/from16 v21, v17

    move-object/from16 v20, v18

    const-wide/16 v17, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v24, v20

    const/16 v20, 0x0

    move-object/from16 v25, v21

    move/from16 v26, v22

    const-wide/16 v21, 0x0

    move-object/from16 v27, v24

    const/16 v24, 0x0

    move-object/from16 v30, v25

    const/16 v25, 0x1

    move/from16 v34, v26

    const/16 v26, 0x0

    move-object/from16 v35, v27

    const/16 v27, 0x0

    move-object/from16 v36, v30

    const/16 v30, 0x0

    move/from16 v34, v12

    move-wide/from16 v37, v7

    move-object v7, v13

    move-wide/from16 v12, v37

    move-object/from16 v8, v36

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v29

    if-eqz p5, :cond_17

    const v10, 0x35868242

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v15, 0x0

    const/16 v16, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/designkit/components/components/LVNotificationIconKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    const/4 v5, 0x1

    goto :goto_13

    :cond_17
    const v10, 0x35874576

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :goto_13
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x30

    invoke-static {v5, v10, v14, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget-wide v12, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v14, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-eqz v35, :cond_19

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_18

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_18
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_14
    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v12, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v14, v2, v14, v1}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v11, v4, v9}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v5, v2}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    shr-int/lit8 v1, v34, 0x9

    and-int/lit8 v30, v1, 0xe

    const/16 v31, 0x6180

    const v32, 0x1aff8

    move-object/from16 v29, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v10, p3

    move-object/from16 v28, v0

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v29 .. v29}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v31, 0x0

    const v32, 0x1fffa

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v0

    invoke-static/range {v10 .. v32}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v29

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v1, v7

    goto :goto_15

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p6

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p6

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p6

    :cond_1c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1d

    new-instance v0, Lp1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZI)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V
    .locals 21

    const v0, -0x4cb13615

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    move-object/from16 v9, p0

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p10, v0

    move-object/from16 v10, p1

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move/from16 v11, p2

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move-object/from16 v12, p3

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move-object/from16 v13, p4

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    move-object/from16 v14, p5

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    move-object/from16 v15, p6

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x80000

    :goto_6
    or-int/2addr v0, v2

    move-object/from16 v2, p7

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v3, 0x400000

    :goto_7
    or-int/2addr v0, v3

    move/from16 v3, p8

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v4, 0x2000000

    :goto_8
    or-int/2addr v0, v4

    const v4, 0x2492493

    and-int/2addr v4, v0

    const v5, 0x2492492

    const/4 v8, 0x1

    if-eq v4, v5, :cond_9

    move v4, v8

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    and-int/2addr v0, v8

    invoke-virtual {v7, v0, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v4, :cond_a

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v5, v8, :cond_b

    const/4 v8, 0x1

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_c

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_d

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v1, Ljava/lang/Number;

    move-object/from16 v19, v7

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v20, v1

    const/4 v1, 0x0

    const/4 v2, 0x6

    move-object/from16 v16, v5

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    move-object/from16 v1, v19

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v18, :cond_e

    if-ne v2, v4, :cond_f

    :cond_e
    new-instance v2, Lh40;

    invoke-direct {v2, v8, v6, v7, v3}, Lh40;-><init>(ZDI)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->s(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v0, v3, v4, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    new-instance v8, Ld40;

    move-object/from16 v18, p7

    move-object/from16 v17, v15

    move-object v15, v9

    move-object v9, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, p8

    invoke-direct/range {v8 .. v18}, Ld40;-><init>(Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const v0, 0x5831a0c3

    invoke-static {v0, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/high16 v8, 0x30000

    const/16 v9, 0x16

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v1

    move/from16 v1, v20

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_10
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v8, Le40;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p10

    invoke-direct/range {v8 .. v18}, Le40;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZI)V

    iput-object v8, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
