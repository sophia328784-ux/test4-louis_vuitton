.class public abstract Lcoil3/compose/AsyncImageKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcoil3/compose/internal/AsyncImageState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p5

    move/from16 v2, p8

    if-eqz v0, :cond_0

    const-string v3, "AsyncImage-76YX9Dk"

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0x49b4d5f6    # 1481406.8f

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    or-int/2addr v4, v2

    and-int/lit16 v8, v2, 0x180

    if-nez v8, :cond_3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_1

    :cond_2
    const/16 v8, 0x80

    :goto_1
    or-int/2addr v4, v8

    :cond_3
    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x800

    goto :goto_2

    :cond_4
    const/16 v9, 0x400

    :goto_2
    or-int/2addr v4, v9

    move-object/from16 v9, p3

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x4000

    goto :goto_3

    :cond_5
    const/16 v10, 0x2000

    :goto_3
    or-int/2addr v4, v10

    const/high16 v10, 0x30000

    and-int/2addr v10, v2

    if-nez v10, :cond_7

    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x20000

    goto :goto_4

    :cond_6
    const/high16 v11, 0x10000

    :goto_4
    or-int/2addr v4, v11

    goto :goto_5

    :cond_7
    move-object/from16 v10, p4

    :goto_5
    const/high16 v11, 0x180000

    and-int/2addr v11, v2

    if-nez v11, :cond_9

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_8
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v4, v11

    :cond_9
    const/high16 v11, 0xc00000

    and-int/2addr v11, v2

    move v12, v11

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v12, :cond_b

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x800000

    goto :goto_7

    :cond_a
    const/high16 v12, 0x400000

    :goto_7
    or-int/2addr v4, v12

    :cond_b
    const/high16 v12, 0x6000000

    and-int/2addr v12, v2

    move v13, v12

    const/4 v12, 0x0

    if-nez v13, :cond_d

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/high16 v13, 0x4000000

    goto :goto_8

    :cond_c
    const/high16 v13, 0x2000000

    :goto_8
    or-int/2addr v4, v13

    :cond_d
    const/high16 v13, 0x30000000

    and-int/2addr v13, v2

    if-nez v13, :cond_f

    move/from16 v13, p6

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x20000000

    goto :goto_9

    :cond_e
    const/high16 v14, 0x10000000

    :goto_9
    or-int/2addr v4, v14

    goto :goto_a

    :cond_f
    move/from16 v13, p6

    :goto_a
    and-int/lit8 v14, p9, 0x6

    const/4 v13, 0x1

    if-nez v14, :cond_11

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_b

    :cond_10
    move v5, v7

    :goto_b
    or-int v5, p9, v5

    goto :goto_c

    :cond_11
    move/from16 v5, p9

    :goto_c
    const v14, 0x12492493

    and-int/2addr v14, v4

    const v15, 0x12492492

    const/4 v11, 0x1

    if-ne v14, v15, :cond_13

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v7, :cond_12

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    move v5, v11

    :goto_e
    and-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v5, v1, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    shr-int/lit8 v4, v4, 0xf

    and-int/lit8 v4, v4, 0x70

    invoke-static {v5, v6, v3, v4}, Lcoil3/compose/internal/UtilsKt;->e(Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcoil3/request/ImageRequest;

    move-result-object v4

    invoke-static {v4}, Lcoil3/compose/internal/UtilsKt;->h(Lcoil3/request/ImageRequest;)V

    move-object v5, v3

    move-object v3, v4

    iget-object v4, v1, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    move-object v7, v5

    iget-object v5, v1, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-static {v7}, Lcoil3/compose/internal/UtilsKt;->b(Landroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePreviewHandler;

    move-result-object v14

    new-instance v2, Lcoil3/compose/internal/ContentPainterElement;

    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object v1, v7

    move-object v7, v9

    move-object v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v10, v6

    move-object v6, v8

    move/from16 v8, p6

    invoke-direct/range {v2 .. v16}, Lcoil3/compose/internal/ContentPainterElement;-><init>(Lcoil3/request/ImageRequest;Lcoil3/ImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLcoil3/compose/AsyncImagePreviewHandler;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {}, Lcoil3/compose/internal/UtilsKt;->a()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget-wide v4, v1, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v7, v1, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_15

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_14

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_15
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_16
    move-object v1, v3

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_17

    move-object v2, v0

    new-instance v0, Lx9;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lx9;-><init>(Lcoil3/compose/internal/AsyncImageState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;III)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
