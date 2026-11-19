.class public abstract Lcom/vuitton/android/presentation/screen/search/components/SuccessSearchComposableKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    const-string v1, "AutocompleteHintComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v5, v0

    const v0, 0x4fa84f58    # 5.6475443E9f

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x10

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    or-int/2addr v0, v4

    and-int/lit16 v6, v4, 0x180

    move-object/from16 v11, p2

    if-nez v6, :cond_3

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_1

    :cond_2
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v0, v6

    :cond_3
    and-int/lit16 v6, v0, 0x93

    const/16 v7, 0x92

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v6, v7, :cond_4

    move v6, v14

    goto :goto_2

    :cond_4
    move v6, v15

    :goto_2
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v12, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_5

    if-ne v8, v9, :cond_6

    :cond_5
    new-instance v8, Lud;

    invoke-direct {v8, v2, v3}, Lud;-><init>(Ljava/util/List;I)V

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v15, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v6}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v6, v7, v12, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget-wide v7, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v12, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v13, :cond_c

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_7

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v3, 0x34e833d7

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v15

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v17, v6, 0x1

    if-ltz v6, :cond_a

    check-cast v7, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_8

    if-ne v13, v9, :cond_9

    :cond_8
    new-instance v13, Lhb;

    const/16 v10, 0x17

    invoke-direct {v13, v6, v10}, Lhb;-><init>(II)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v15, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;->a:Ljava/lang/String;

    move-object v10, v8

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;->b:Ljava/lang/String;

    move-object v13, v9

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/search/models/SearchHintUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    shl-int/lit8 v18, v0, 0x9

    const/high16 v19, 0x70000

    and-int v18, v18, v19

    move-object/from16 v20, v10

    move-object v10, v7

    move-object/from16 v7, v20

    move/from16 v20, v18

    move-object/from16 v18, v13

    move/from16 v13, v20

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/search/components/SearchHintCardComposableKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v11, p2

    move/from16 v6, v17

    move-object/from16 v9, v18

    goto :goto_4

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v16

    :cond_b
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_5

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v0, Log0;

    move-object v1, v5

    const/4 v5, 0x7

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Log0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, "AutocompleteMatchComposable"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    const p0, 0x70f8dda7

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    and-int/lit8 p3, p4, 0x6

    if-nez p3, :cond_2

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p3, p4

    goto :goto_1

    :cond_2
    move p3, p4

    :goto_1
    and-int/lit8 v0, p4, 0x30

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    :goto_2
    or-int/2addr p3, v0

    :cond_4
    and-int/lit16 v0, p4, 0x180

    if-nez v0, :cond_6

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x100

    goto :goto_3

    :cond_5
    const/16 v0, 0x80

    :goto_3
    or-int/2addr p3, v0

    :cond_6
    and-int/lit16 v0, p3, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x1

    if-eq v0, v2, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    and-int/2addr p3, v3

    invoke-virtual {p0, p3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p3, Landroidx/compose/material3/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p3

    new-instance v0, Lm1;

    invoke-direct {v0, v1, p1, p2}, Lm1;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    const v2, -0x27767f19

    invoke-static {v2, v0, p0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {p3, v0, p0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Log0;

    const/16 v5, 0x8

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Log0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final c(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x5214df67

    move-object/from16 v5, p7

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p8, v4

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v4, v5

    move-object/from16 v5, p3

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v4, v6

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v4, v6

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v6, 0x10000

    :goto_5
    or-int/2addr v4, v6

    move-object/from16 v6, p6

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v8, 0x80000

    :goto_6
    or-int/2addr v4, v8

    const v8, 0x92493

    and-int/2addr v8, v4

    const v10, 0x92492

    const/4 v11, 0x0

    if-eq v8, v10, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    move v8, v11

    :goto_7
    and-int/lit8 v10, v4, 0x1

    invoke-virtual {v7, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v8, "SuccessSearchComposable"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v10}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v7}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v14

    const/16 v15, 0xe

    invoke-static {v13, v14, v11, v15}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v14, v15, v7, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v14

    const/4 v15, 0x1

    iget-wide v11, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v7, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v15

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v17, 0x0

    if-eqz v10, :cond_d

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_8

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v14, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v13, v10, v8, v11}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v22, 0x0

    const/16 v23, 0xd

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v20, v10

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    shl-int/lit8 v11, v4, 0x3

    and-int/lit8 v11, v11, 0x70

    shr-int/lit8 v12, v4, 0x6

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v11, v12

    invoke-static {v10, v1, v0, v7, v11}, Lcom/vuitton/android/presentation/screen/search/components/SuccessSearchComposableKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    const v10, 0x4fc880c

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v10, v8, v11}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    and-int/lit8 v10, v4, 0x70

    or-int/lit8 v10, v10, 0x6

    shr-int/lit8 v11, v4, 0x9

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v10, v11

    invoke-static {v8, v2, v9, v7, v10}, Lcom/vuitton/android/presentation/screen/search/components/SuccessSearchComposableKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    const v10, 0x500905f

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    instance-of v8, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    if-eqz v8, :cond_a

    move-object/from16 v17, v3

    check-cast v17, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    :cond_a
    move-object/from16 v8, v17

    if-eqz v8, :cond_b

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;->b:Ljava/util/List;

    if-eqz v8, :cond_b

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    move/from16 v15, v16

    if-ne v8, v15, :cond_b

    goto :goto_a

    :cond_b
    instance-of v8, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    if-eqz v8, :cond_c

    :goto_a
    const v8, 0x5039ac3

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v8, 0x7f141125

    invoke-static {v7, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    shr-int/lit8 v10, v4, 0x3

    and-int/lit16 v10, v10, 0x3f0

    shr-int/lit8 v4, v4, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v4, v10

    move/from16 v24, v4

    move-object v4, v3

    move-object v3, v8

    move/from16 v8, v24

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    const/4 v15, 0x1

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    const v3, 0x5083cff

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :goto_c
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_f

    new-instance v0, Lo;

    const/16 v9, 0x17

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/Function;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
