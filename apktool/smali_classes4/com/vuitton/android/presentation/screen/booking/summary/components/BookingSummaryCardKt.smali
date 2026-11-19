.class public abstract Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryCardKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v4, p4

    if-eqz v0, :cond_0

    const-string v2, "BookingSummaryCard"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v7, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x3423cc92

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move/from16 v9, p2

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x100

    goto :goto_2

    :cond_3
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x800

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4000

    goto :goto_4

    :cond_5
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    move-object/from16 v2, p6

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v8, 0x80000

    :goto_5
    or-int/2addr v8, v0

    const v0, 0x92493

    and-int/2addr v0, v8

    const v10, 0x92492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v0, v10, :cond_7

    move v0, v12

    goto :goto_6

    :cond_7
    move v0, v11

    :goto_6
    and-int/lit8 v10, v8, 0x1

    invoke-virtual {v13, v10, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x459ce185

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v10

    iget v15, v10, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    const v10, 0x7f140a70

    invoke-static {v13, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    and-int/lit16 v10, v8, 0x1c00

    if-ne v10, v3, :cond_8

    move v3, v12

    goto :goto_7

    :cond_8
    move v3, v11

    :goto_7
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v3, v10

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_a

    if-ne v10, v14, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v3, p3

    goto :goto_9

    :cond_a
    :goto_8
    new-instance v10, Lmg;

    move-object/from16 v3, p3

    invoke-direct {v10, v3, v1, v11}, Lmg;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;I)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    move-object/from16 v19, v10

    check-cast v19, Lkotlin/jvm/functions/Function0;

    move-object v10, v14

    new-instance v14, Lcom/vuitton/android/designkit/components/components/SwipeAction;

    const/16 v20, 0x0

    move-wide/from16 v17, v5

    invoke-direct/range {v14 .. v20}, Lcom/vuitton/android/designkit/components/components/SwipeAction;-><init>(ILjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v14}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v6

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v0, 0xe000

    and-int/2addr v0, v8

    const/16 v5, 0x4000

    if-ne v0, v5, :cond_b

    move v11, v12

    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v11, :cond_c

    if-ne v0, v10, :cond_d

    :cond_c
    new-instance v0, Lh1;

    const/16 v5, 0x13

    invoke-direct {v0, v4, v5}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_e

    new-instance v0, Lh1;

    const/16 v5, 0x14

    move-object/from16 v10, p5

    invoke-direct {v0, v10, v5}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    move-object/from16 v10, p5

    :goto_a
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lng;

    move-object v5, v2

    move v2, v9

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lng;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x3c82d171

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    and-int/lit8 v1, v8, 0xe

    const/high16 v2, 0x30000

    or-int/2addr v1, v2

    and-int/lit16 v2, v8, 0x380

    or-int v14, v1, v2

    const/4 v15, 0x0

    move/from16 v9, p2

    move-object v8, v6

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v0, Log;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move-object v1, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Log;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
