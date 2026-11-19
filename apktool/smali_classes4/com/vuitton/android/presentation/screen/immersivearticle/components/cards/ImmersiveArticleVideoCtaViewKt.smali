.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleVideoCtaViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "scale",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const v0, -0x36d9505b

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p3

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x180

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_6

    move v1, v4

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "AssetBlock"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->e:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v2, v4

    :goto_6
    new-instance v5, Lrs;

    const/16 v6, 0x12

    invoke-direct {v5, p1, p0, v6}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v6, 0x6

    invoke-static {v1, v2, v5, p3, v6}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget-wide v7, p3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p3, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v8, p3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_a

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, p3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_9

    invoke-virtual {p3, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {p3, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {p2, v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_b
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_c

    new-instance v0, Lv1;

    const/16 v2, 0x10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p4

    invoke-direct/range {v0 .. v5}, Lv1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move-object/from16 v5, p4

    move/from16 v9, p8

    const-string v10, "ImmersiveArticleVideoCtaView"

    if-eqz v0, :cond_0

    invoke-static {v0, v10}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v11, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5bc47769

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v8, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_4

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_4
    and-int/lit16 v3, v9, 0x180

    if-nez v3, :cond_6

    move/from16 v3, p2

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

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
    move/from16 v3, p2

    :goto_4
    and-int/lit16 v4, v9, 0xc00

    if-nez v4, :cond_8

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_5

    :cond_7
    const/16 v4, 0x400

    :goto_5
    or-int/2addr v0, v4

    :cond_8
    and-int/lit16 v4, v9, 0x6000

    if-nez v4, :cond_a

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

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

    and-int/2addr v4, v9

    if-nez v4, :cond_c

    move-object/from16 v4, p5

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v12, 0x10000

    :goto_7
    or-int/2addr v0, v12

    goto :goto_8

    :cond_c
    move-object/from16 v4, p5

    :goto_8
    const/high16 v12, 0x180000

    and-int/2addr v12, v9

    if-nez v12, :cond_e

    move-object/from16 v12, p6

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v13, 0x80000

    :goto_9
    or-int/2addr v0, v13

    :goto_a
    move/from16 v35, v0

    goto :goto_b

    :cond_e
    move-object/from16 v12, p6

    goto :goto_a

    :goto_b
    const v0, 0x92493

    and-int v0, v35, v0

    const v13, 0x92492

    const/4 v14, 0x1

    const/4 v9, 0x0

    if-eq v0, v13, :cond_f

    move v0, v14

    goto :goto_c

    :cond_f
    move v0, v9

    :goto_c
    and-int/lit8 v13, v35, 0x1

    invoke-virtual {v15, v13, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-boolean v13, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->l:Z

    if-eqz v13, :cond_10

    const v13, 0x3f99999a    # 1.2f

    goto :goto_d

    :cond_10
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_d
    const/16 v2, 0x1f4

    const/4 v7, 0x0

    const/4 v6, 0x6

    invoke-static {v2, v9, v7, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    const/16 v16, 0xc00

    const/16 v17, 0x14

    move v6, v14

    const-string v14, "card scale"

    move v12, v13

    move-object v13, v2

    move v2, v6

    invoke-static/range {v12 .. v17}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v12, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    move-object v14, v8

    iget-wide v7, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v15, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v14, :cond_27

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_11

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v36, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->k:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-object/from16 v18, v14

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    move-object/from16 v19, v14

    sget-object v14, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-nez v2, :cond_12

    const v0, -0x79ee1bd8

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 p7, v14

    move-object v14, v3

    move-object/from16 v3, p7

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    move-object/from16 p7, v11

    move-object/from16 v12, v19

    const/4 v2, 0x1

    const/4 v11, 0x0

    goto/16 :goto_14

    :cond_12
    const v1, -0x79ee1bd7

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v20, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const v0, -0x79800be6

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lv30;

    move-object/from16 v1, p1

    move-object v12, v3

    move-object/from16 p0, v14

    move-object/from16 v3, v20

    move v14, v2

    move-object v2, v5

    move-object v5, v4

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lv30;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V

    move-object v5, v2

    const v2, 0x694a6d87

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v2, v35, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x180

    shr-int/lit8 v3, v35, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    invoke-static {v1, v5, v0, v15, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleVideoCtaViewKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v3, p0

    move v6, v0

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    move-object/from16 p7, v11

    move v2, v14

    const/4 v11, 0x0

    move-object v14, v12

    move-object/from16 v12, v19

    goto/16 :goto_13

    :cond_13
    move-object/from16 v1, p1

    move-object/from16 p0, v14

    move v14, v2

    move-object v2, v3

    move-object/from16 v3, v20

    goto :goto_f

    :cond_14
    move-object/from16 p0, v3

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 p0, v14

    const/4 v14, 0x1

    :goto_f
    iget-object v4, v3, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v4, :cond_1b

    iget-object v4, v4, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-static {v4}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v14, :cond_1b

    const v4, -0x796a7227

    invoke-static {v15, v4, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v12, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget-wide v5, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v18, :cond_1a

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_15

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_15
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    invoke-static {v15, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v15, v8, v15, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v15, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v12, v19

    if-ne v4, v12, :cond_16

    new-instance v4, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v4, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    new-instance v0, Lx30;

    move/from16 v6, p2

    move-object/from16 v5, p4

    move-object v14, v2

    move-object v2, v3

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    move-object/from16 p7, v11

    const/4 v11, 0x0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v3, v1

    move-object v1, v4

    move/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lx30;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v4, v1

    move-object v1, v3

    const v2, 0x2c9f31b8

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v2, v35, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x180

    shr-int/lit8 v3, v35, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    invoke-static {v1, v5, v0, v15, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleVideoCtaViewKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    if-eqz p3, :cond_19

    const v0, -0x65e2258

    invoke-static {v15, v0, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v2, v4, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_17

    if-ne v7, v12, :cond_18

    :cond_17
    new-instance v7, Lgj;

    const/16 v6, 0x9

    invoke-direct {v7, v4, v6}, Lgj;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;I)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static {v6, v15, v0, v7, v2}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    const/4 v2, 0x1

    goto :goto_12

    :cond_19
    move-object/from16 v3, p0

    const/4 v6, 0x0

    const v0, -0x655b3d9

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :goto_12
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :cond_1a
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_1b
    move/from16 p7, v14

    move-object v14, v2

    move/from16 v2, p7

    move-object/from16 v3, p0

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    move-object/from16 p7, v11

    move-object/from16 v12, v19

    const/4 v6, 0x0

    const/4 v11, 0x0

    const v0, -0x79489a23

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-static {v0, v11, v11, v4}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v3, v0, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v6, 0x36

    invoke-static {v3, v4, v15, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget-wide v6, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v18, :cond_26

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_1c

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    invoke-static {v15, v3, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v16

    move-object/from16 v6, v37

    invoke-static {v4, v15, v3, v15, v6}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, p7

    invoke-static {v15, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->e:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const v0, 0x616813ff

    invoke-static {v15, v0, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/16 v21, 0x2

    const/16 v18, 0x0

    move/from16 v17, v0

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move-object/from16 v19, v12

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    if-ne v0, v6, :cond_1d

    const v0, 0x616e66e6

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v42, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v52, 0x0

    const v53, 0xfffffb

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v53}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    move-object/from16 v30, v0

    goto :goto_17

    :cond_1d
    const/4 v6, 0x0

    const v0, 0x61713841

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :goto_17
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v6, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v6, v0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v33, 0x6000

    const v34, 0x1bbf8

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v19

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v22, v6

    move-object/from16 v31, v15

    move-wide v14, v3

    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v31

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_1e
    move-object v0, v12

    const/4 v6, 0x0

    const v7, 0x6174ee1d

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    const v6, 0x61765b36

    invoke-static {v15, v6, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x2

    const/16 v18, 0x0

    move/from16 v17, v6

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_1f

    new-instance v7, Lx20;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lx20;-><init>(I)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;->HANLEY_PRO:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;

    if-ne v6, v7, :cond_20

    const v6, 0x617df1eb

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->g:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v31, 0x0

    const v32, 0xfffffb

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v16 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    move-object/from16 v30, v6

    goto :goto_1a

    :cond_20
    const/4 v8, 0x0

    const v6, 0x6180afe6

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :goto_1a
    sget-object v6, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v7, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v7, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v33, 0x0

    const v34, 0x1fbf8

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v22, v7

    move-object/from16 v31, v15

    move-wide v14, v3

    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v31

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_21
    const/4 v6, 0x0

    const v3, 0x6183cf3d

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v3

    iget-object v13, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->h:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;

    if-eqz v3, :cond_22

    const v3, 0x61864797

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->Y:I

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    move v14, v3

    goto :goto_1d

    :cond_22
    const v3, 0x61876f0f

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :goto_1d
    const v3, 0xe000

    and-int v3, v35, v3

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_23

    move v6, v2

    :cond_23
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_24

    if-ne v4, v0, :cond_25

    :cond_24
    new-instance v4, Lw30;

    invoke-direct {v4, v5, v1, v2}, Lw30;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;I)V

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v21, v4

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/16 v24, 0x0

    const/16 v25, 0x3f9

    const/4 v12, 0x0

    move-object/from16 v31, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v31

    invoke-static/range {v12 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v22

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_27
    const/4 v11, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_28
    move-object/from16 v36, v11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_29

    new-instance v0, Lrp;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v2, v1

    move-object/from16 v1, v36

    invoke-direct/range {v0 .. v8}, Lrp;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
