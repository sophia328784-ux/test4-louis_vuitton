.class public abstract Lcoil3/compose/SubcomposeAsyncImageKt;
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
.method public static final a(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v13, p8

    if-eqz v0, :cond_0

    const-string v2, "SubcomposeAsyncImage-gl8XCv8"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0xc43f3ee

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int v2, p10, v2

    move-object/from16 v5, p1

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x10

    const/16 v10, 0x20

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    or-int/2addr v2, v8

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x100

    goto :goto_2

    :cond_3
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v2, v8

    move-object/from16 v8, p3

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x800

    goto :goto_3

    :cond_4
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v2, v11

    move-object/from16 v11, p4

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x4000

    goto :goto_4

    :cond_5
    const/16 v14, 0x2000

    :goto_4
    or-int/2addr v2, v14

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/high16 v14, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v14, 0x10000

    :goto_5
    or-int/2addr v2, v14

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/high16 v14, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v14, 0x80000

    :goto_6
    or-int/2addr v2, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_8

    const/high16 v15, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v15, 0x400000

    :goto_7
    or-int/2addr v2, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v16, 0x2000000

    :goto_8
    or-int v2, v2, v16

    move/from16 v3, p7

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000000

    goto :goto_9

    :cond_a
    const/high16 v16, 0x10000000

    :goto_9
    or-int v2, v2, v16

    and-int/lit8 v16, p11, 0x6

    const/4 v4, 0x1

    if-nez v16, :cond_c

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x4

    goto :goto_a

    :cond_b
    const/16 v16, 0x2

    :goto_a
    or-int v16, p11, v16

    goto :goto_b

    :cond_c
    move/from16 v16, p11

    :goto_b
    and-int/lit8 v17, p11, 0x30

    if-nez v17, :cond_e

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move v9, v10

    :cond_d
    or-int v16, v16, v9

    :cond_e
    const v9, 0x12492493

    and-int/2addr v9, v2

    const v10, 0x12492492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v9, v10, :cond_10

    and-int/lit8 v9, v16, 0x13

    const/16 v10, 0x12

    if-eq v9, v10, :cond_f

    goto :goto_c

    :cond_f
    move v9, v14

    goto :goto_d

    :cond_10
    :goto_c
    move v9, v15

    :goto_d
    and-int/lit8 v10, v2, 0x1

    invoke-virtual {v12, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_14

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v9, v1, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    shr-int/lit8 v10, v2, 0xf

    and-int/lit8 v10, v10, 0x70

    invoke-static {v9, v7, v12, v10}, Lcoil3/compose/internal/UtilsKt;->e(Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcoil3/request/ImageRequest;

    move-result-object v9

    iget-object v10, v1, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    shr-int/lit8 v17, v2, 0x6

    shr-int/lit8 v18, v2, 0xc

    new-instance v7, Lcoil3/compose/internal/AsyncImageState;

    sget-object v2, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-direct {v7, v9, v2, v10}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V

    move-object/from16 v10, p6

    move-object v2, v9

    move-object v9, v11

    move v11, v3

    invoke-static/range {v7 .. v12}, Lcoil3/compose/AsyncImagePainterKt;->a(Lcoil3/compose/internal/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePainter;

    move-result-object v3

    iget-object v2, v2, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    instance-of v7, v2, Lcoil3/compose/ConstraintsSizeResolver;

    if-nez v7, :cond_13

    const v2, -0x57b1a215

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget-wide v7, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_12

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_11

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_e
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    move v10, v4

    move-object v4, v3

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    move-object/from16 v7, p6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcoil3/compose/RealSubcomposeAsyncImageScope;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Z)V

    and-int/lit8 v3, v16, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v2, v12, v3}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v2, v0

    goto :goto_f

    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_13
    move-object v4, v3

    const v3, -0x57a71fbe

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v3, v2

    new-instance v2, Lcoil3/compose/b;

    check-cast v3, Lcoil3/compose/ConstraintsSizeResolver;

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v5, v4

    move-object v4, v13

    invoke-direct/range {v2 .. v8}, Lcoil3/compose/b;-><init>(Lcoil3/compose/ConstraintsSizeResolver;Lkotlin/jvm/functions/Function3;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;)V

    const v3, -0x16596474

    invoke-static {v3, v2, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    and-int/lit8 v2, v17, 0xe

    or-int/lit16 v2, v2, 0xd80

    and-int/lit8 v3, v18, 0x70

    or-int v7, v2, v3

    const/4 v8, 0x0

    const/4 v4, 0x1

    move-object/from16 v3, p5

    move-object v2, v0

    move-object v6, v12

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_14
    move-object v2, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_15

    new-instance v0, Lsd;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v11}, Lsd;-><init>(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final b(Lcoil3/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLandroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v10, p10

    const-string v1, "SubcomposeAsyncImageContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x52016e6e

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v10

    :goto_1
    or-int/lit8 v5, v4, 0x30

    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_3

    or-int/lit16 v5, v4, 0xb0

    :cond_3
    and-int/lit16 v4, v10, 0xc00

    if-nez v4, :cond_4

    or-int/lit16 v5, v5, 0x400

    :cond_4
    and-int/lit16 v4, v10, 0x6000

    if-nez v4, :cond_5

    or-int/lit16 v5, v5, 0x2000

    :cond_5
    const/high16 v4, 0x30000

    and-int/2addr v4, v10

    if-nez v4, :cond_6

    const/high16 v4, 0x10000

    or-int/2addr v5, v4

    :cond_6
    const/high16 v4, 0x180000

    and-int/2addr v4, v10

    if-nez v4, :cond_7

    const/high16 v4, 0x80000

    or-int/2addr v5, v4

    :cond_7
    const/high16 v4, 0xc00000

    and-int/2addr v4, v10

    if-nez v4, :cond_8

    const/high16 v4, 0x400000

    or-int/2addr v5, v4

    :cond_8
    const/high16 v4, 0x6000000

    and-int/2addr v4, v10

    if-nez v4, :cond_9

    const/high16 v4, 0x2000000

    or-int/2addr v5, v4

    :cond_9
    const v4, 0x2492493

    and-int/2addr v4, v5

    const v6, 0x2492492

    const/4 v7, 0x1

    if-eq v4, v6, :cond_a

    move v4, v7

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v5, v7

    invoke-virtual {v2, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v4, v10, 0x1

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p8

    goto :goto_4

    :cond_c
    :goto_3
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->d()Lcoil3/compose/AsyncImagePainter;

    move-result-object v1

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->getContentDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v5

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->f()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v6

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->a()F

    move-result v8

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->b()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v9

    invoke-interface {v3}, Lcoil3/compose/SubcomposeAsyncImageScope;->h()Z

    move-result v11

    :goto_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v12, Lcoil3/compose/internal/SubcomposeContentPainterElement;

    move-object/from16 p2, v1

    move-object/from16 p8, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v8

    move-object/from16 p6, v9

    move/from16 p7, v11

    move-object/from16 p1, v12

    invoke-direct/range {p1 .. p8}, Lcoil3/compose/internal/SubcomposeContentPainterElement;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;)V

    invoke-interface {v0, v12}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {}, Lcoil3/compose/internal/UtilsKt;->a()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    iget-wide v14, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-static {v2, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v0

    iget-object v0, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v0, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_d

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v15, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v7, v8

    move-object v8, v9

    move v9, v11

    move-object/from16 v0, v16

    goto :goto_6

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_10

    move-object v2, v0

    new-instance v0, La21;

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v10}, La21;-><init>(Lcoil3/compose/SubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZI)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method
