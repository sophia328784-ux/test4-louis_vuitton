.class public abstract Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;
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
.method public static final a(ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    const v0, 0x5dfa0782

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 p2, p3, 0x6

    if-nez p2, :cond_1

    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p2, p3

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    or-int/lit8 p2, p2, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_4

    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_2

    :cond_3
    const/16 v1, 0x10

    :goto_2
    or-int/2addr p2, v1

    :cond_4
    :goto_3
    and-int/lit8 v1, p2, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    and-int/lit8 v2, p2, 0x1

    invoke-virtual {v8, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    move-object v2, p1

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "DefaultImage"

    invoke-direct {p1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    and-int/lit8 p1, p2, 0xe

    invoke-static {p0, v8, p1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    sget-object p1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    and-int/lit8 p1, p2, 0x70

    const/16 p2, 0x6188

    or-int v9, p2, p1

    const/16 v10, 0x68

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object p1, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Li20;

    invoke-direct {v0, p0, p1, p3, p4}, Li20;-><init>(ILjava/lang/String;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    const-string v1, "ImageLoader-jOlONis"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0xd991453

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v5, v11, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v11, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v11

    goto :goto_1

    :cond_3
    move v5, v11

    :goto_1
    and-int/lit8 v6, v11, 0x30

    if-nez v6, :cond_6

    if-eqz v2, :cond_4

    new-instance v6, Lcom/vuitton/android/presentation/imageloading/compose/ImageData;

    invoke-direct {v6, v2}, Lcom/vuitton/android/presentation/imageloading/compose/ImageData;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_3

    :cond_5
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v5, v6

    :cond_6
    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_8

    or-int/lit16 v5, v5, 0x180

    :cond_7
    move-object/from16 v9, p2

    goto :goto_5

    :cond_8
    and-int/lit16 v9, v11, 0x180

    if-nez v9, :cond_7

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x100

    goto :goto_4

    :cond_9
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v5, v10

    :goto_5
    and-int/lit8 v10, v12, 0x8

    if-eqz v10, :cond_b

    or-int/lit16 v5, v5, 0xc00

    :cond_a
    move-object/from16 v13, p3

    goto :goto_7

    :cond_b
    and-int/lit16 v13, v11, 0xc00

    if-nez v13, :cond_a

    move-object/from16 v13, p3

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x800

    goto :goto_6

    :cond_c
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v5, v14

    :goto_7
    and-int/lit8 v14, v12, 0x10

    if-eqz v14, :cond_e

    or-int/lit16 v5, v5, 0x6000

    :cond_d
    move-object/from16 v15, p4

    goto :goto_9

    :cond_e
    and-int/lit16 v15, v11, 0x6000

    if-nez v15, :cond_d

    move-object/from16 v15, p4

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/16 v16, 0x4000

    goto :goto_8

    :cond_f
    const/16 v16, 0x2000

    :goto_8
    or-int v5, v5, v16

    :goto_9
    and-int/lit8 v16, v12, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_10

    or-int v5, v5, v17

    move/from16 v8, p5

    const/16 p0, 0x0

    goto :goto_b

    :cond_10
    and-int v17, v11, v17

    move/from16 v8, p5

    const/16 p0, 0x0

    if-nez v17, :cond_12

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v17, 0x10000

    :goto_a
    or-int v5, v5, v17

    :cond_12
    :goto_b
    const/high16 v17, 0x180000

    or-int v17, v5, v17

    and-int/lit16 v7, v12, 0x80

    if-eqz v7, :cond_14

    const/high16 v17, 0xd80000

    or-int v17, v5, v17

    :cond_13
    move/from16 v5, p6

    goto :goto_d

    :cond_14
    const/high16 v5, 0xc00000

    and-int/2addr v5, v11

    if-nez v5, :cond_13

    move/from16 v5, p6

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_15

    const/high16 v18, 0x800000

    goto :goto_c

    :cond_15
    const/high16 v18, 0x400000

    :goto_c
    or-int v17, v17, v18

    :goto_d
    const/high16 v18, 0x6000000

    or-int v18, v17, v18

    move-object/from16 v19, v0

    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_17

    const/high16 v18, 0x36000000

    or-int v18, v17, v18

    :cond_16
    move/from16 v17, v0

    move-object/from16 v0, p8

    goto :goto_f

    :cond_17
    const/high16 v17, 0x30000000

    and-int v17, v11, v17

    if-nez v17, :cond_16

    move/from16 v17, v0

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x20000000

    goto :goto_e

    :cond_18
    const/high16 v20, 0x10000000

    :goto_e
    or-int v18, v18, v20

    :goto_f
    const v20, 0x12492493

    and-int v0, v18, v20

    const v2, 0x12492492

    move/from16 v20, v4

    if-ne v0, v2, :cond_19

    const/4 v0, 0x0

    goto :goto_10

    :cond_19
    const/4 v0, 0x1

    :goto_10
    and-int/lit8 v2, v18, 0x1

    invoke-virtual {v3, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v20, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    move-object/from16 v0, v19

    :goto_11
    if-eqz v6, :cond_1b

    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/layout/ContentScale$Companion;->d:Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;

    move-object v9, v2

    :cond_1b
    if-eqz v10, :cond_1c

    move-object/from16 v2, p0

    goto :goto_12

    :cond_1c
    move-object v2, v13

    :goto_12
    const v6, 0x7f08035b

    if-eqz v14, :cond_1d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_13

    :cond_1d
    move-object v10, v15

    :goto_13
    if-eqz v16, :cond_1e

    goto :goto_14

    :cond_1e
    move v6, v8

    :goto_14
    if-eqz v7, :cond_1f

    const/4 v5, 0x1

    :cond_1f
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_20

    new-instance v7, Ldy;

    const/16 v13, 0x1b

    invoke-direct {v7, v13}, Ldy;-><init>(I)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v7, Lkotlin/jvm/functions/Function1;

    if-eqz v17, :cond_22

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_21

    new-instance v13, Ldy;

    const/16 v14, 0x1c

    invoke-direct {v13, v14}, Ldy;-><init>(I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v13, Lkotlin/jvm/functions/Function1;

    goto :goto_15

    :cond_22
    move-object/from16 v13, p8

    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_23

    new-instance v14, Ldy;

    const/16 v15, 0x1d

    invoke-direct {v14, v15}, Ldy;-><init>(I)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v14, Lkotlin/jvm/functions/Function1;

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/Context;

    move/from16 p9, v5

    sget-object v5, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 p2, v5

    and-int/lit8 v5, v18, 0x70

    move-object/from16 v23, v7

    const/16 v7, 0x20

    if-ne v5, v7, :cond_24

    const/4 v5, 0x1

    goto :goto_16

    :cond_24
    const/4 v5, 0x0

    :goto_16
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_25

    if-ne v7, v8, :cond_28

    :cond_25
    new-instance v5, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v5, v4}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_27

    if-nez p1, :cond_26

    move-object/from16 v7, p0

    goto :goto_17

    :cond_26
    move-object/from16 v7, p1

    :goto_17
    invoke-static {v5, v4, v7}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V

    :cond_27
    const/16 v4, 0xc8

    invoke-static {v5, v4}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/ImageRequest$Builder;I)V

    invoke-virtual {v5}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v4

    new-instance v7, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;

    invoke-direct {v7, v4, v2, v9}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v7, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    move-object/from16 p10, v9

    iget-wide v8, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 p2, v5

    iget-object v5, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_31

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_29

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_29
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_18
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;->a:Ljava/lang/Object;

    sget-object v4, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    sget-object v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->c:I

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {v8}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    move-result-object v8

    new-instance v9, Lcoil3/compose/internal/AsyncImageState;

    sget-object v15, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-direct {v9, v0, v15, v8}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V

    sget-object v0, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    sget-object v0, Lcoil3/compose/AsyncImagePainter;->y:Lcoil3/compose/AsyncImagePainter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcoil3/compose/AsyncImagePainter;->z:Lu5;

    if-nez v13, :cond_2b

    if-eqz v14, :cond_2a

    goto :goto_1a

    :cond_2a
    move-object/from16 p4, p0

    :goto_19
    move-object/from16 p3, v0

    move-object/from16 p7, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p2, v9

    goto :goto_1b

    :cond_2b
    :goto_1a
    new-instance v8, Lpj0;

    const/4 v15, 0x7

    invoke-direct {v8, v13, v14, v15}, Lpj0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 p4, v8

    goto :goto_19

    :goto_1b
    invoke-static/range {p2 .. p7}, Lcoil3/compose/AsyncImagePainterKt;->a(Lcoil3/compose/internal/AsyncImageState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePainter;

    move-result-object v0

    move-object/from16 v3, p7

    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/compose/AsyncImagePainter$State;

    instance-of v4, v0, Lcoil3/compose/AsyncImagePainter$State$Empty;

    if-nez v4, :cond_2c

    instance-of v4, v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    if-eqz v4, :cond_2d

    :cond_2c
    move-object v0, v13

    move-object v1, v14

    const/4 v5, 0x0

    goto :goto_1d

    :cond_2d
    instance-of v4, v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    if-eqz v4, :cond_2e

    const v0, -0xead4fc3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, v18, 0xf

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v18, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    const/4 v5, 0x0

    invoke-static {v6, v2, v3, v0, v5}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->a(ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v0, v13

    move-object v1, v14

    :goto_1c
    const/4 v4, 0x1

    goto/16 :goto_1f

    :cond_2e
    const/4 v5, 0x0

    instance-of v4, v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    if-eqz v4, :cond_2f

    const v4, -0xeaade8e

    invoke-static {v3, v4, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v8, -0xea6d5bf

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v4, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter$State$Success;->a:Landroidx/compose/ui/graphics/painter/Painter;

    move-object v1, v14

    iget-object v14, v7, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;->b:Ljava/lang/String;

    iget-object v4, v7, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;->c:Landroidx/compose/ui/layout/ContentScale;

    const/16 v21, 0x8

    const/16 v22, 0x68

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v0, v17

    move-object/from16 v20, v3

    move-object/from16 v17, v4

    invoke-static/range {v13 .. v22}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_2f
    const v0, 0x7c8b723

    invoke-static {v3, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :goto_1d
    const v4, -0xeaf7d47

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-nez v10, :cond_30

    const v4, -0xeaf7d48

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_30
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v4

    shr-int/lit8 v7, v18, 0x6

    and-int/lit8 v7, v7, 0x70

    invoke-static {v4, v2, v3, v7, v5}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->a(ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1e
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :goto_1f
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v7, p9

    move-object/from16 v9, p10

    move-object v4, v2

    move-object v5, v10

    move-object/from16 v8, v23

    move-object v10, v1

    move-object/from16 v1, v24

    goto :goto_20

    :cond_31
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p0

    :cond_32
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v0, p8

    move-object/from16 v10, p9

    move v7, v5

    move v6, v8

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v1, v19

    move-object/from16 v8, p7

    :goto_20
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_33

    move-object v3, v9

    move-object v9, v0

    new-instance v0, Lh20;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v12}, Lh20;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string v1, "ImageLoaderSubCompose-5r2kJcU"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, 0x2a52b387

    move-object/from16 v4, p11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int v4, p12, v4

    new-instance v10, Lcom/vuitton/android/presentation/imageloading/compose/ImageData;

    invoke-direct {v10, v2}, Lcom/vuitton/android/presentation/imageloading/compose/ImageData;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_1

    :cond_2
    const/16 v10, 0x10

    :goto_1
    or-int/2addr v4, v10

    const v10, 0x36006d80

    or-int/2addr v4, v10

    const v10, 0x12492493

    and-int/2addr v10, v4

    const v12, 0x12492492

    const/4 v13, 0x0

    if-ne v10, v12, :cond_3

    move v10, v13

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    :goto_2
    and-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_16

    sget-object v10, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/layout/ContentScale$Companion;->d:Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v15, :cond_4

    new-instance v12, Ldy;

    const/16 v9, 0x18

    invoke-direct {v12, v9}, Ldy;-><init>(I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v20, v12

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_5

    new-instance v9, Ldy;

    const/16 v12, 0x19

    invoke-direct {v9, v12}, Ldy;-><init>(I)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v15, :cond_6

    new-instance v12, Ldy;

    const/16 v11, 0x1a

    invoke-direct {v12, v11}, Ldy;-><init>(I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v11, v12

    check-cast v11, Lkotlin/jvm/functions/Function1;

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v14, 0x0

    if-eqz v12, :cond_9

    const v1, 0x2e1495bd

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    move-object/from16 p2, v9

    iget-wide v8, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_8

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_7

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x7f08035b

    const/4 v4, 0x6

    const/4 v8, 0x2

    invoke-static {v1, v14, v3, v4, v8}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->a(ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, p2

    move-object/from16 v21, v0

    move-object v8, v3

    move-object v0, v10

    move-object v2, v11

    const/4 v4, 0x1

    const/16 v5, 0xc8

    goto/16 :goto_f

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v14

    :cond_9
    move-object/from16 p2, v9

    const v8, 0x2e175afc

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    and-int/lit8 v4, v4, 0x70

    const/16 v12, 0x20

    if-ne v4, v12, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    move v4, v13

    :goto_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v4, :cond_c

    if-ne v12, v15, :cond_b

    goto :goto_5

    :cond_b
    move-object v15, v12

    const/16 v12, 0xc8

    goto :goto_6

    :cond_c
    :goto_5
    new-instance v4, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v4, v9}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v9, v2}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V

    const/16 v12, 0xc8

    invoke-static {v4, v12}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/ImageRequest$Builder;I)V

    invoke-virtual {v4}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v4

    new-instance v15, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;

    invoke-direct {v15, v4, v14, v10}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;)V

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_6
    check-cast v15, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v12, 0x2e218de3

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v4, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v4, v15, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;->a:Ljava/lang/Object;

    iget-object v12, v15, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;->b:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoader$Zoomable$Model;->c:Landroidx/compose/ui/layout/ContentScale;

    if-nez v5, :cond_d

    const v14, 0x2e27ba09

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    const v14, 0x2e27ba0a

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v14, Lj20;

    invoke-direct {v14, v5, v13}, Lj20;-><init>(Lkotlin/jvm/functions/Function3;I)V

    move-object/from16 v21, v0

    const v0, -0x74db70f5

    invoke-static {v0, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    if-nez v6, :cond_e

    const v14, 0x2e2910bb

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v14, v13

    const/4 v13, 0x0

    goto :goto_8

    :cond_e
    const v14, 0x2e2910bc

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v14, Lcf;

    const/4 v13, 0x3

    invoke-direct {v14, v2, v6, v13}, Lcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v13, -0xd30111c

    invoke-static {v13, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    if-nez v7, :cond_f

    const v9, 0x2e2e4b4d    # 3.96299E-11f

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    const v14, 0x2e2e4b4e

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v14, Lcf;

    const/4 v2, 0x4

    invoke-direct {v14, v7, v9, v2}, Lcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x352231c6    # -7268125.0f

    invoke-static {v2, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    if-eqz v1, :cond_10

    const-string v9, "SubcomposeAsyncImage-nc27qi8"

    invoke-static {v1, v9}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_10
    sget-object v9, Lcoil3/compose/AsyncImagePainter;->y:Lcoil3/compose/AsyncImagePainter$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcoil3/compose/AsyncImagePainter;->z:Lu5;

    sget-object v17, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v18, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v14

    move-object v14, v15

    sget v15, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->c:I

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {v8}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    move-result-object v8

    if-eqz v1, :cond_11

    const-string v5, "SubcomposeAsyncImage-MokUVwQ"

    invoke-static {v1, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :cond_11
    new-instance v5, Lcoil3/compose/internal/AsyncImageState;

    move-object/from16 p0, v1

    sget-object v1, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    invoke-direct {v5, v4, v1, v8}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V

    sget-object v1, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    if-nez p2, :cond_13

    if-eqz v11, :cond_12

    goto :goto_a

    :cond_12
    move-object/from16 v8, p2

    const/4 v1, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    new-instance v1, Lpj0;

    const/4 v4, 0x7

    move-object/from16 v8, p2

    invoke-direct {v1, v8, v11, v4}, Lpj0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    :goto_b
    if-nez v0, :cond_15

    if-nez v2, :cond_15

    if-eqz v13, :cond_14

    goto :goto_d

    :cond_14
    sget-object v0, Lcoil3/compose/ComposableSingletons$SubcomposeAsyncImageKt;->a:Lcoil3/compose/ComposableSingletons$SubcomposeAsyncImageKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcoil3/compose/ComposableSingletons$SubcomposeAsyncImageKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 p2, v1

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v16, v0

    move/from16 v0, v18

    goto :goto_e

    :cond_15
    :goto_d
    new-instance v4, Lyj0;

    move-object/from16 p2, v1

    const/16 v1, 0xc

    invoke-direct {v4, v0, v2, v13, v1}, Lyj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x41f77c73

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    goto :goto_c

    :goto_e
    const/16 v18, 0x0

    const/16 v19, 0x0

    move v4, v2

    move-object v1, v8

    move-object v2, v11

    move-object/from16 v13, v17

    move-object/from16 v17, v3

    move-object v8, v5

    move-object v11, v9

    move-object v9, v12

    const/16 v5, 0xc8

    move-object/from16 v12, p2

    move v3, v0

    move-object v0, v10

    move-object/from16 v10, p0

    invoke-static/range {v8 .. v19}, Lcoil3/compose/SubcomposeAsyncImageKt;->a(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v8, v17

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    move-object v3, v0

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v17, v8

    move-object/from16 v9, v20

    move v8, v4

    move v4, v5

    goto :goto_10

    :cond_16
    move-object/from16 v21, v0

    move-object v8, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v17, v8

    move/from16 v8, p7

    :goto_10
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_17

    new-instance v0, Lk20;

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v12, p12

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v12}, Lk20;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
