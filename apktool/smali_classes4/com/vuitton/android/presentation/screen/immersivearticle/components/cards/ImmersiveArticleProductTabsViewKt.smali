.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleProductTabsViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleProductTabsViewKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "selectedIndex",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v1, "ImmersiveArticleProductTabsView"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x792be761

    move-object/from16 v7, p6

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    iget-object v4, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v7, p7, 0x6

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_0

    :cond_1
    const/16 v8, 0x10

    :goto_0
    or-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_1

    :cond_2
    const/16 v8, 0x80

    :goto_1
    or-int/2addr v7, v8

    move-object/from16 v8, p3

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x800

    goto :goto_2

    :cond_3
    const/16 v10, 0x400

    :goto_2
    or-int/2addr v7, v10

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x4000

    goto :goto_3

    :cond_4
    const/16 v10, 0x2000

    :goto_3
    or-int/2addr v7, v10

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v10, 0x10000

    :goto_4
    or-int v27, v7, v10

    const v7, 0x12493

    and-int v7, v27, v7

    const v10, 0x12492

    const/4 v14, 0x0

    if-eq v7, v10, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    move v7, v14

    :goto_5
    and-int/lit8 v10, v27, 0x1

    invoke-virtual {v9, v10, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_1c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;->a:Ljava/util/List;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v15, :cond_7

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    const/4 v13, 0x6

    if-nez v16, :cond_8

    if-ne v11, v15, :cond_9

    :cond_8
    new-instance v11, Ldb;

    invoke-direct {v11, v7, v13}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x3

    invoke-static {v14, v11, v9, v14, v13}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v11

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v14, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v12, v13, v14}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v19, v4

    const/4 v2, 0x0

    invoke-static {v13, v14, v9, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v9, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    if-eqz v19, :cond_1b

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v21, v2

    iget-boolean v2, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_a

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v21, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v6, 0x5d395e47

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v28, v6

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v32, 0x0

    const/16 v33, 0xd

    const/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v30, v6

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v28, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {v13, v14, v9, v1}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    move-object v1, v15

    iget-wide v14, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v19, :cond_1a

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v19, v1

    iget-boolean v1, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_b

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    invoke-static {v9, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v15, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v9, v8, v9, v5}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v9, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v1, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->SEO_LANDING_PAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    if-ne v3, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    new-instance v6, Lrq;

    const/16 v8, 0x1a

    invoke-direct {v6, v8}, Lrq;-><init>(I)V

    const/4 v8, 0x0

    invoke-static {v1, v2, v6, v9, v8}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v10}, Landroidx/compose/runtime/IntState;->f()I

    move-result v2

    move-object v6, v7

    check-cast v6, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;->b:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const/high16 v13, 0x70000

    and-int v13, v27, v13

    const/high16 v14, 0x20000

    if-ne v13, v14, :cond_e

    const/4 v13, 0x1

    goto :goto_a

    :cond_e
    move v13, v8

    :goto_a
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_10

    move-object/from16 v13, v19

    if-ne v14, v13, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v15, p5

    goto :goto_c

    :cond_10
    move-object/from16 v13, v19

    :goto_b
    new-instance v14, Ljx;

    move-object/from16 v15, p5

    const/4 v8, 0x6

    invoke-direct {v14, v15, v7, v10, v8}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/4 v8, 0x0

    move-object/from16 v23, v9

    const/4 v9, 0x0

    move-object/from16 v30, v10

    move v4, v12

    move-object/from16 v34, v13

    move-object v13, v14

    move-object/from16 v12, v21

    move-object/from16 v14, v23

    const/4 v5, 0x0

    move v10, v2

    move-object v2, v7

    move-object v7, v1

    const/4 v1, 0x1

    invoke-static/range {v7 .. v16}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt;->a(Landroidx/compose/ui/Modifier;FFILjava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;->c:Ljava/util/List;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/IntState;->f()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    sget-object v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->SEO_LANDING_PAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    if-ne v3, v4, :cond_12

    move/from16 v17, v1

    goto :goto_e

    :cond_12
    move/from16 v17, v5

    :goto_e
    invoke-static/range {v23 .. v23}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v15, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    shr-int/lit8 v4, v27, 0x3

    and-int/lit16 v4, v4, 0x380

    const v26, 0xeaad

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v24, 0x180000

    move-object/from16 v19, p3

    move/from16 v25, v4

    invoke-static/range {v7 .. v26}, Lcom/vuitton/android/presentation/common/editorial/components/carousels/CarouselSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v9, v23

    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/IntState;->f()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    if-nez v2, :cond_13

    const v2, 0x4be4e119    # 2.9999666E7f

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_14

    :cond_13
    const v4, 0x4be4e11a    # 2.9999668E7f

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;->a:Ljava/lang/String;

    if-nez v14, :cond_14

    const v2, 0x5869d086

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_13

    :cond_14
    const v4, 0x5869d087

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleProductTabsViewKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v1, :cond_16

    const/4 v7, 0x2

    if-ne v6, v7, :cond_15

    const v6, 0x6d30018b

    move-object/from16 v7, v28

    invoke-static {v9, v6, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->k:F

    const/16 v20, 0x5

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v6

    move/from16 v19, v7

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_15
    const v0, 0x6d2fd809

    invoke-static {v9, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_16
    move-object/from16 v7, v28

    const v6, 0x6d2fe42e

    invoke-static {v9, v6, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v6

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    invoke-interface {v4, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v6, v8, v7}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v4

    iget-object v11, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v4, 0xe000

    and-int v4, v27, v4

    const/16 v6, 0x4000

    if-ne v4, v6, :cond_17

    move v13, v1

    goto :goto_10

    :cond_17
    move v13, v5

    :goto_10
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_19

    move-object/from16 v13, v34

    if-ne v6, v13, :cond_18

    goto :goto_11

    :cond_18
    move-object/from16 v7, p4

    goto :goto_12

    :cond_19
    :goto_11
    new-instance v6, Ldt;

    const/16 v4, 0x1d

    move-object/from16 v7, p4

    invoke-direct {v6, v7, v2, v4}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    move-object v15, v6

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f8

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v7 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-static {v9, v1, v5, v1}, Lpq0;->x(Landroidx/compose/runtime/GapComposer;ZZZ)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    :goto_15
    move-object v1, v0

    goto :goto_16

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v20

    :cond_1c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_15

    :goto_16
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1d

    new-instance v0, Lu1;

    const/16 v8, 0xe

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method
