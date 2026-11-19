.class public abstract Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ProductCarouselKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    if-eqz v0, :cond_0

    const-string v1, "ProductCarousel--b7W0Lw"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x248aaa69

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v8, 0x6

    const/4 v3, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    and-int/lit8 v4, v8, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_4
    or-int/lit16 v1, v1, 0x180

    and-int/lit16 v4, v8, 0xc00

    move/from16 v14, p3

    if-nez v4, :cond_6

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x800

    goto :goto_3

    :cond_5
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v1, v4

    :cond_6
    and-int/lit16 v4, v8, 0x6000

    move/from16 v13, p4

    if-nez v4, :cond_8

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x4000

    goto :goto_4

    :cond_7
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v1, v4

    :cond_8
    const/high16 v4, 0x30000

    and-int/2addr v4, v8

    if-nez v4, :cond_a

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/high16 v4, 0x20000

    goto :goto_5

    :cond_9
    const/high16 v4, 0x10000

    :goto_5
    or-int/2addr v1, v4

    :cond_a
    const/high16 v4, 0x180000

    and-int/2addr v4, v8

    if-nez v4, :cond_c

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x100000

    goto :goto_6

    :cond_b
    const/high16 v4, 0x80000

    :goto_6
    or-int/2addr v1, v4

    :cond_c
    const v4, 0x92493

    and-int/2addr v4, v1

    const v5, 0x92492

    const/4 v10, 0x0

    if-eq v4, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    move v4, v10

    :goto_7
    and-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v5, 0x3

    invoke-static {v10, v0, v5}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v11

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->c:Z

    const/high16 v12, 0x70000

    const v15, 0xe000

    const v16, 0xc00c00

    if-eqz v5, :cond_f

    const v5, 0x64b36bed

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move v5, v10

    move-object v10, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_8
    if-ge v5, v3, :cond_e

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    goto :goto_8

    :cond_e
    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    sget-object v5, Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ComposableSingletons$ProductCarouselKt;->a:Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ComposableSingletons$ProductCarouselKt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v5, v16

    sget-object v16, Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ComposableSingletons$ProductCarouselKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit8 v17, v1, 0xe

    or-int v5, v17, v5

    and-int/2addr v15, v1

    or-int/2addr v5, v15

    shl-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v12

    or-int v18, v5, v1

    const/16 v19, 0x0

    const/4 v12, 0x1

    move-object/from16 v17, v0

    move v15, v3

    const/4 v0, 0x0

    invoke-static/range {v9 .. v19}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v3, v17

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_f
    move-object v3, v0

    move v0, v10

    move-object v10, v11

    move/from16 v5, v16

    const v11, 0x64baa3f0

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const-string v11, "carousel_container_view"

    invoke-static {v9, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    move v13, v12

    iget-object v12, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    move/from16 p0, v5

    new-instance v5, Ls8;

    move/from16 p2, v13

    const/4 v13, 0x7

    invoke-direct {v5, v4, v6, v7, v13}, Ls8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v13, -0x359fe322    # -3671863.5f

    invoke-static {v13, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    and-int v5, v1, v15

    or-int v5, v5, p0

    shl-int/lit8 v1, v1, 0x6

    and-int v1, v1, p2

    or-int v19, v5, v1

    const/16 v20, 0x0

    const/4 v13, 0x1

    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    move/from16 v15, p3

    move-object/from16 v18, v3

    move/from16 v16, v14

    move/from16 v14, p4

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;IFFFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_a

    :cond_10
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p2

    :goto_a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v0, Lc60;

    move/from16 v5, p4

    move-object v3, v4

    move-object v1, v9

    move/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Lc60;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;FFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
