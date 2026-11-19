.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleAssetViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "cardScale",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const v0, 0x79a29f48

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    const/16 v2, 0x10

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "AssetBlock"

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->e:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v5

    :goto_5
    new-instance v6, Lrq;

    const/16 v7, 0x18

    invoke-direct {v6, v7}, Lrq;-><init>(I)V

    const/4 v7, 0x6

    invoke-static {v1, v3, v6, p2, v7}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget-wide v8, p2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {p2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, p2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_8

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_7

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {p1, v1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lg2;

    invoke-direct {v0, p0, p1, p3, v2}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;ILcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v6, p4

    move/from16 v8, p8

    const-string v9, "ImmersiveArticleAssetView"

    if-eqz v0, :cond_0

    invoke-static {v0, v9}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v10, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x6c1a6577

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v7, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    and-int/lit8 v2, v8, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_4
    and-int/lit16 v2, v8, 0x180

    if-nez v2, :cond_6

    move/from16 v2, p2

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    goto :goto_4

    :cond_6
    move/from16 v2, p2

    :goto_4
    and-int/lit16 v4, v8, 0xc00

    if-nez v4, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_5

    :cond_7
    const/16 v4, 0x400

    :goto_5
    or-int/2addr v0, v4

    :cond_8
    and-int/lit16 v4, v8, 0x6000

    if-nez v4, :cond_a

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_6

    :cond_9
    const/16 v4, 0x2000

    :goto_6
    or-int/2addr v0, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int/2addr v4, v8

    if-nez v4, :cond_c

    move-object/from16 v4, p5

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/high16 v5, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v5, 0x10000

    :goto_7
    or-int/2addr v0, v5

    goto :goto_8

    :cond_c
    move-object/from16 v4, p5

    :goto_8
    const/high16 v5, 0x180000

    and-int/2addr v5, v8

    if-nez v5, :cond_e

    move-object/from16 v5, p6

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/high16 v11, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v11, 0x80000

    :goto_9
    or-int/2addr v0, v11

    :goto_a
    move/from16 v17, v0

    goto :goto_b

    :cond_e
    move-object/from16 v5, p6

    goto :goto_a

    :goto_b
    const v0, 0x92493

    and-int v0, v17, v0

    const v11, 0x92492

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v0, v11, :cond_f

    move v0, v12

    goto :goto_c

    :cond_f
    move v0, v13

    :goto_c
    and-int/lit8 v11, v17, 0x1

    invoke-virtual {v14, v11, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-boolean v11, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->i:Z

    if-eqz v11, :cond_10

    const v11, 0x3f99999a    # 1.2f

    goto :goto_d

    :cond_10
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_d
    const/16 v15, 0x1f4

    const/4 v5, 0x0

    const/4 v1, 0x6

    invoke-static {v15, v13, v5, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    const/16 v15, 0xc00

    const/16 v16, 0x14

    move/from16 v18, v13

    const-string v13, "card scale"

    move v5, v12

    move-object v12, v1

    move v1, v5

    move/from16 v5, v18

    invoke-static/range {v11 .. v16}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    sget-object v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->SEO_LANDING_PAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-object/from16 v13, p3

    if-ne v13, v12, :cond_11

    move v12, v1

    goto :goto_e

    :cond_11
    move v12, v5

    :goto_e
    new-instance v15, Lrq;

    const/16 v1, 0x17

    invoke-direct {v15, v1}, Lrq;-><init>(I)V

    and-int/lit8 v1, v17, 0xe

    invoke-static {v10, v12, v15, v14, v1}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v12, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v19, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v7, :cond_27

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v2, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_12

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v15, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v19, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v20, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->h:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    move-object/from16 v21, v5

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-nez v4, :cond_13

    const v0, 0x3206080a

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v8, v1

    move-object v11, v2

    move-object v4, v5

    move-object v13, v6

    move-object/from16 v18, v7

    move-object/from16 v34, v10

    move-object/from16 v10, v19

    move-object/from16 v36, v21

    const/16 p7, 0x0

    goto/16 :goto_15

    :cond_13
    move-object/from16 v22, v1

    const/16 v18, 0x0

    const v1, 0x3206080b

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v1, v4, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-static {v1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v23, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const v0, -0x2eb312ef

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lr;

    move-object v1, v5

    const/16 v5, 0xe

    move-object v12, v1

    move/from16 v16, v2

    move-object v2, v13

    move/from16 v11, v18

    const/4 v13, 0x0

    move-object/from16 v1, p6

    invoke-direct/range {v0 .. v5}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0xc96fdca

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v1, v17, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit8 v1, v1, 0x30

    invoke-static {v3, v0, v14, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleAssetViewKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v18, v7

    move-object/from16 v34, v10

    move v5, v11

    move-object v4, v12

    move-object/from16 p7, v13

    move-object/from16 v10, v19

    move-object/from16 v36, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    move-object v13, v6

    goto/16 :goto_14

    :cond_14
    move-object v13, v4

    move-object/from16 v35, v5

    move-object/from16 v34, v10

    move-object/from16 v1, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    const/16 p7, 0x0

    move v10, v2

    move-object/from16 v2, v23

    goto :goto_10

    :cond_15
    move-object v13, v4

    move-object/from16 v35, v5

    move-object/from16 v34, v10

    move-object/from16 v1, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    const/16 p7, 0x0

    const/4 v10, 0x1

    :goto_10
    iget-object v10, v13, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v10, :cond_1d

    iget-object v10, v10, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v10, :cond_1d

    invoke-static {v10}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v10

    const/4 v3, 0x1

    if-ne v10, v3, :cond_1c

    const v3, -0x2e9b5f4a

    invoke-static {v14, v3, v9}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v12, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    move-object/from16 v16, v11

    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v14, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v7, :cond_1b

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v18, v7

    iget-boolean v7, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_16

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_16
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    invoke-static {v14, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v11, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v14, v4, v14, v6}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v14, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_17

    new-instance v3, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    new-instance v0, Lo1;

    move-object v10, v1

    move-object v11, v2

    move-object v1, v3

    move-object/from16 v20, v4

    move-object/from16 v36, v5

    move-object v2, v13

    move-object/from16 v7, v16

    const/4 v12, 0x4

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v4, p4

    move-object v13, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lo1;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;ZILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V

    const v2, -0x7529a7d9

    invoke-static {v2, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v2, v17, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v2, v2, 0x30

    invoke-static {v3, v0, v14, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleAssetViewKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    if-eqz p4, :cond_1a

    const v0, -0x568cb546

    invoke-static {v14, v0, v9}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v4, v35

    invoke-virtual {v4, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v2, v1, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_18

    if-ne v6, v8, :cond_19

    :cond_18
    new-instance v6, Lgj;

    invoke-direct {v6, v1, v12}, Lgj;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;I)V

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-static {v5, v14, v0, v6, v2}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    const/4 v1, 0x1

    goto :goto_13

    :cond_1a
    move-object/from16 v4, v35

    const/4 v5, 0x0

    const v0, -0x568446c7

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :goto_13
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p7

    :cond_1c
    move-object/from16 v3, p1

    :cond_1d
    move-object v10, v1

    move-object v11, v2

    move-object/from16 v20, v4

    move-object/from16 v36, v5

    move-object v13, v6

    move-object/from16 v18, v7

    move-object/from16 v4, v35

    const/4 v5, 0x0

    const v0, -0x2e7ed9f1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    move-object/from16 v2, p7

    invoke-static {v0, v2, v2, v1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v4, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v4, 0x36

    invoke-static {v1, v2, v14, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    iget-wide v4, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v18, :cond_26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_1e

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_16
    invoke-static {v14, v1, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v4, v20

    invoke-static {v2, v14, v4, v14, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v5, v36

    invoke-static {v14, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->j:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    goto :goto_17

    :cond_1f
    const/4 v5, 0x0

    :goto_17
    if-nez v5, :cond_20

    const v0, 0x2de54247

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_20
    const/4 v10, 0x0

    const v0, 0x2de539cd

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v0, v5, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_18
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->e:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const v2, -0x713b4309

    invoke-static {v14, v2, v9}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/16 v20, 0x2

    const/16 v17, 0x0

    move/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->e:Ljava/lang/String;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    if-ne v2, v4, :cond_21

    const v2, -0x713506a8

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v15, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v30, 0x0

    const v31, 0xfffffb

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    move-object/from16 v29, v2

    goto :goto_1a

    :cond_21
    const/4 v10, 0x0

    const v2, -0x7132354d

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :goto_1a
    sget-object v2, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v4, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v32, 0x6000

    const v33, 0x1bbf8

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v21, v4

    move-object/from16 v30, v14

    move-wide v13, v0

    invoke-static/range {v11 .. v33}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v30

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_22
    const/4 v10, 0x0

    const v2, -0x712e7f71

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const v2, -0x712d1eb2

    invoke-static {v14, v2, v9}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x2

    const/16 v17, 0x0

    move/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v8, :cond_23

    new-instance v4, Lx20;

    const/4 v10, 0x0

    invoke-direct {v4, v10}, Lx20;-><init>(I)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_23
    const/4 v10, 0x0

    :goto_1c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v10, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->c:Ljava/lang/String;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    if-ne v2, v4, :cond_24

    const v2, -0x71259e83

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v15, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v30, 0x0

    const v31, 0xfffffb

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    move-object/from16 v29, v2

    goto :goto_1e

    :cond_24
    const/4 v10, 0x0

    const v2, -0x7122e088

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :goto_1e
    sget-object v2, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v4, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v32, 0x0

    const v33, 0x1fbf8

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v21, v4

    move-object/from16 v30, v14

    move-wide v13, v0

    invoke-static/range {v11 .. v33}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v30

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    const/4 v1, 0x1

    goto :goto_20

    :cond_25
    const/4 v10, 0x0

    const v0, -0x711fc131

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :goto_20
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_21

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v13, 0x0

    throw v13

    :cond_27
    const/4 v13, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v13

    :cond_28
    move-object/from16 v34, v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_21
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_29

    new-instance v0, Lrp;

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v2, v3

    move-object/from16 v1, v34

    move/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lrp;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/AssetArticleSectionUiModel;ILcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
