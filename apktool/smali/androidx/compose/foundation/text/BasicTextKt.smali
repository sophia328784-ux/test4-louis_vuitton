.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/text/AnnotatedString;",
        "displayedText",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;III)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    move/from16 v14, p10

    move/from16 v15, p12

    if-eqz v0, :cond_0

    const-string v2, "BasicText-CL7eQgs"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x5013ac4b

    move-object/from16 v4, p9

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v4, v14, 0x6

    if-nez v4, :cond_2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v14

    goto :goto_1

    :cond_2
    move v4, v14

    :goto_1
    and-int/lit8 v8, v14, 0x30

    if-nez v8, :cond_4

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :cond_4
    and-int/lit16 v8, v14, 0x180

    if-nez v8, :cond_6

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x100

    goto :goto_3

    :cond_5
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :cond_6
    and-int/lit16 v8, v14, 0xc00

    if-nez v8, :cond_8

    move-object/from16 v8, p3

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x800

    goto :goto_4

    :cond_7
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_8
    move-object/from16 v8, p3

    :goto_5
    and-int/lit16 v9, v14, 0x6000

    if-nez v9, :cond_a

    move/from16 v9, p4

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x4000

    goto :goto_6

    :cond_9
    const/16 v10, 0x2000

    :goto_6
    or-int/2addr v4, v10

    goto :goto_7

    :cond_a
    move/from16 v9, p4

    :goto_7
    const/high16 v10, 0x30000

    and-int/2addr v10, v14

    if-nez v10, :cond_c

    move/from16 v10, p5

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_b

    const/high16 v11, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v11, 0x10000

    :goto_8
    or-int/2addr v4, v11

    goto :goto_9

    :cond_c
    move/from16 v10, p5

    :goto_9
    const/high16 v11, 0x180000

    and-int/2addr v11, v14

    if-nez v11, :cond_e

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_d

    const/high16 v11, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v11, 0x80000

    :goto_a
    or-int/2addr v4, v11

    :cond_e
    and-int/lit16 v11, v15, 0x80

    const/high16 v12, 0xc00000

    if-eqz v11, :cond_10

    or-int/2addr v4, v12

    :cond_f
    move/from16 v12, p7

    goto :goto_c

    :cond_10
    and-int/2addr v12, v14

    if-nez v12, :cond_f

    move/from16 v12, p7

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x800000

    goto :goto_b

    :cond_11
    const/high16 v13, 0x400000

    :goto_b
    or-int/2addr v4, v13

    :goto_c
    and-int/lit16 v13, v15, 0x100

    const/high16 v16, 0x6000000

    if-eqz v13, :cond_12

    or-int v4, v4, v16

    move-object/from16 v5, p8

    goto :goto_e

    :cond_12
    and-int v16, v14, v16

    move-object/from16 v5, p8

    if-nez v16, :cond_14

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x4000000

    goto :goto_d

    :cond_13
    const/high16 v16, 0x2000000

    :goto_d
    or-int v4, v4, v16

    :cond_14
    :goto_e
    const/high16 v16, 0x30000000

    or-int v4, v4, v16

    and-int/lit16 v7, v15, 0x400

    const/4 v9, 0x0

    if-eqz v7, :cond_15

    or-int/lit8 v7, p11, 0x6

    goto :goto_11

    :cond_15
    and-int/lit8 v7, p11, 0x6

    if-nez v7, :cond_18

    and-int/lit8 v7, p11, 0x8

    if-nez v7, :cond_16

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_f

    :cond_16
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    :goto_f
    if-eqz v7, :cond_17

    const/4 v7, 0x4

    goto :goto_10

    :cond_17
    const/4 v7, 0x2

    :goto_10
    or-int v7, p11, v7

    goto :goto_11

    :cond_18
    move/from16 v7, p11

    :goto_11
    const v16, 0x12492493

    and-int v9, v4, v16

    move-object/from16 v16, v0

    const v0, 0x12492492

    if-ne v9, v0, :cond_1a

    and-int/lit8 v0, v7, 0x3

    const/4 v9, 0x2

    if-eq v0, v9, :cond_19

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    const/4 v0, 0x1

    :goto_13
    and-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v11, :cond_1b

    const/4 v9, 0x1

    goto :goto_14

    :cond_1b
    move/from16 v9, p7

    :goto_14
    if-eqz v13, :cond_1c

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_15

    :cond_1c
    move-object/from16 v18, v5

    :goto_15
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v9, v6}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->a(II)V

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_21

    const v11, 0x5eab0cd5

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v11, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    iget-wide v12, v11, Landroidx/compose/foundation/text/selection/TextSelectionColors;->b:J

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v11

    new-instance v10, Lc;

    move/from16 v29, v4

    const/4 v4, 0x6

    invoke-direct {v10, v0, v4}, Lc;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lu5;

    const/16 v6, 0x14

    invoke-direct {v4, v6}, Lu5;-><init>(I)V

    new-instance v6, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v6, v10, v4}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_1e

    if-ne v10, v5, :cond_1d

    goto :goto_16

    :cond_1d
    const/4 v4, 0x0

    goto :goto_17

    :cond_1e
    :goto_16
    new-instance v10, Lyc;

    const/4 v4, 0x0

    invoke-direct {v10, v0, v4}, Lyc;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;I)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v11, v6, v10, v2, v4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v4

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_1f

    if-ne v6, v5, :cond_20

    :cond_1f
    new-instance v19, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/16 v26, 0x8

    const/16 v27, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-wide/from16 v20, v10

    move-wide/from16 v23, v12

    invoke-direct/range {v19 .. v27}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v19

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v6, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v11, v6

    goto :goto_18

    :cond_21
    move/from16 v29, v4

    const/4 v4, 0x0

    const v0, 0x5eb28b71

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v11, 0x0

    :goto_18
    sget-object v0, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a:Lkotlin/Pair;

    iget-object v0, v1, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, v1, Landroidx/compose/ui/text/AnnotatedString;->b:Ljava/util/List;

    if-eqz v4, :cond_25

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v6, :cond_25

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v13, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v13, v13, Landroidx/compose/ui/text/StringAnnotation;

    if-eqz v13, :cond_23

    iget-object v13, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->d:Ljava/lang/String;

    move-object/from16 v19, v4

    const-string v4, "androidx.compose.foundation.text.inlineContent"

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v12, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    const/4 v13, 0x0

    invoke-static {v13, v0, v4, v12}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_1c

    :cond_22
    :goto_1a
    const/4 v13, 0x0

    goto :goto_1b

    :cond_23
    move-object/from16 v19, v4

    goto :goto_1a

    :cond_24
    :goto_1b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v19

    goto :goto_19

    :cond_25
    const/4 v13, 0x0

    move v4, v13

    :goto_1c
    iget-object v0, v1, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString;->d(I)Z

    move-result v0

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move/from16 v28, v13

    const/4 v13, 0x0

    if-nez v4, :cond_28

    if-nez v0, :cond_28

    const v0, 0x5eb64fb6

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-static {v1, v3, v10, v0, v2}, Landroidx/compose/foundation/text/BasicText_androidKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/Composer;)V

    move-object v6, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v7, v9

    const/4 v9, 0x0

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v17, v0

    move-object v14, v2

    move-object v2, v3

    move-object v3, v8

    move-object/from16 v0, v16

    const/4 v15, 0x1

    move-object v8, v6

    move/from16 v6, p6

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move v9, v7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v1, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-static {v14, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v5, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_27

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_26

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    :cond_26
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1d
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    sget-object v5, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    invoke-static {v14, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v7, v9

    move-object/from16 v4, v18

    goto/16 :goto_1f

    :cond_27
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_28
    move-object v14, v2

    move-object v6, v10

    move-object/from16 v0, v16

    const/4 v15, 0x1

    const v1, 0x5ec5cfb6

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v1, v29, 0xe

    const/4 v2, 0x4

    if-ne v1, v2, :cond_29

    move v10, v15

    goto :goto_1e

    :cond_29
    move/from16 v10, v28

    :goto_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v10, :cond_2a

    if-ne v1, v5, :cond_2b

    :cond_2a
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_2c

    if-ne v8, v5, :cond_2d

    :cond_2c
    new-instance v8, Lj6;

    const/4 v3, 0x5

    invoke-direct {v8, v3, v1}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object v12, v8

    check-cast v12, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v1, v29, 0x3

    and-int/lit16 v1, v1, 0x38e

    shr-int/lit8 v3, v29, 0xc

    const v5, 0xe000

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    shl-int/lit8 v3, v29, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v3, v8

    or-int/2addr v1, v3

    shl-int/lit8 v3, v29, 0x6

    const/high16 v8, 0x380000

    and-int/2addr v8, v3

    or-int/2addr v1, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v8, v3

    or-int/2addr v1, v8

    const/high16 v8, 0xe000000

    and-int/2addr v8, v3

    or-int/2addr v1, v8

    const/high16 v8, 0x70000000

    and-int/2addr v3, v8

    or-int v15, v1, v3

    shr-int/lit8 v1, v29, 0x15

    and-int/lit16 v1, v1, 0x380

    shl-int/lit8 v3, v7, 0xc

    and-int/2addr v3, v5

    or-int v16, v1, v3

    move-object/from16 v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v1, v2

    move v3, v4

    move-object v10, v6

    move-object/from16 v4, v18

    move-object/from16 v2, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v16}, Landroidx/compose/foundation/text/BasicTextKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V

    move v7, v9

    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v9, v4

    move v8, v7

    goto :goto_20

    :cond_2e
    move-object v14, v2

    move-object/from16 v0, v16

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v8, p7

    move-object v9, v5

    :goto_20
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2f

    move-object/from16 v16, v0

    new-instance v0, Lcd;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v12}, Lcd;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;III)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v6, p6

    move/from16 v14, p9

    move/from16 v15, p10

    if-eqz v0, :cond_0

    const-string v2, "BasicText-RWo7tUw"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v0, -0x3e089999

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_2
    move v0, v14

    :goto_1
    and-int/lit8 v2, v14, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_4
    and-int/lit16 v2, v14, 0x180

    if-nez v2, :cond_6

    move-object/from16 v2, p2

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_3

    :cond_5
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    goto :goto_4

    :cond_6
    move-object/from16 v2, p2

    :goto_4
    and-int/lit8 v3, v15, 0x8

    if-eqz v3, :cond_8

    or-int/lit16 v0, v0, 0xc00

    :cond_7
    move-object/from16 v4, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v4, v14, 0xc00

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x800

    goto :goto_5

    :cond_9
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v0, v5

    :goto_6
    and-int/lit8 v5, v15, 0x10

    if-eqz v5, :cond_b

    or-int/lit16 v0, v0, 0x6000

    :cond_a
    move/from16 v8, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v8, v14, 0x6000

    if-nez v8, :cond_a

    move/from16 v8, p4

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x4000

    goto :goto_7

    :cond_c
    const/16 v9, 0x2000

    :goto_7
    or-int/2addr v0, v9

    :goto_8
    and-int/lit8 v9, v15, 0x20

    const/high16 v12, 0x30000

    if-eqz v9, :cond_e

    or-int/2addr v0, v12

    :cond_d
    move/from16 v12, p5

    goto :goto_a

    :cond_e
    and-int/2addr v12, v14

    if-nez v12, :cond_d

    move/from16 v12, p5

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v13, 0x10000

    :goto_9
    or-int/2addr v0, v13

    :goto_a
    const/high16 v13, 0x180000

    and-int/2addr v13, v14

    if-nez v13, :cond_11

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x100000

    goto :goto_b

    :cond_10
    const/high16 v13, 0x80000

    :goto_b
    or-int/2addr v0, v13

    :cond_11
    and-int/lit16 v13, v15, 0x80

    const/high16 v16, 0xc00000

    if-eqz v13, :cond_12

    or-int v0, v0, v16

    move/from16 v7, p7

    goto :goto_d

    :cond_12
    and-int v16, v14, v16

    move/from16 v7, p7

    if-nez v16, :cond_14

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x800000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x400000

    :goto_c
    or-int v0, v0, v16

    :cond_14
    :goto_d
    const/high16 v16, 0x6000000

    or-int v16, v0, v16

    move/from16 p8, v0

    and-int/lit16 v0, v15, 0x200

    const/4 v12, 0x0

    if-eqz v0, :cond_15

    const/high16 v0, 0x36000000

    or-int v16, p8, v0

    goto :goto_10

    :cond_15
    const/high16 v0, 0x30000000

    and-int/2addr v0, v14

    if-nez v0, :cond_18

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v14

    if-nez v0, :cond_16

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_16
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    if-eqz v0, :cond_17

    const/high16 v0, 0x20000000

    goto :goto_f

    :cond_17
    const/high16 v0, 0x10000000

    :goto_f
    or-int v16, v16, v0

    :cond_18
    :goto_10
    const v0, 0x12492493

    and-int v0, v16, v0

    const v12, 0x12492492

    move/from16 v17, v9

    move/from16 v18, v13

    const/4 v13, 0x1

    if-eq v0, v12, :cond_19

    move v0, v13

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    and-int/lit8 v12, v16, 0x1

    invoke-virtual {v11, v12, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz v3, :cond_1a

    const/4 v12, 0x0

    goto :goto_12

    :cond_1a
    move-object v12, v4

    :goto_12
    if-eqz v5, :cond_1b

    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/style/TextOverflow;->b:I

    move v8, v0

    :cond_1b
    if-eqz v17, :cond_1c

    move/from16 v16, v13

    goto :goto_13

    :cond_1c
    move/from16 v16, p5

    :goto_13
    if-eqz v18, :cond_1d

    move v7, v13

    :cond_1d
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v7, v6}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->a(II)V

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    if-eqz v0, :cond_22

    const v3, 0x153e95a3

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    iget-wide v3, v3, Landroidx/compose/foundation/text/selection/TextSelectionColors;->b:J

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    new-instance v9, Lc;

    const/4 v13, 0x6

    invoke-direct {v9, v0, v13}, Lc;-><init>(Ljava/lang/Object;I)V

    new-instance v13, Lu5;

    const/16 v1, 0x14

    invoke-direct {v13, v1}, Lu5;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v1, v9, v13}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_1f

    if-ne v13, v2, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v9, 0x1

    goto :goto_15

    :cond_1f
    :goto_14
    new-instance v13, Lyc;

    const/4 v9, 0x1

    invoke-direct {v13, v0, v9}, Lyc;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;I)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    invoke-static {v5, v1, v13, v11, v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v11, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_20

    if-ne v9, v2, :cond_21

    :cond_20
    new-instance v17, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/16 v24, 0x8

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move-wide/from16 v21, v3

    move-wide/from16 v18, v5

    invoke-direct/range {v17 .. v25}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, v17

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v9, Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    const v1, 0x1546143f    # 4.0001753E-26f

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v9, 0x0

    :goto_16
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    sget-object v0, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    if-eqz v6, :cond_23

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/text/BasicText_androidKt;->b(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x4ac313f6    # 6392315.0f

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/unit/Density;

    :try_start_0
    new-instance v0, Lgd;

    move-object/from16 v3, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lgd;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    const v1, 0x4adbba47    # 7200035.5f

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v9, :cond_24

    if-nez v12, :cond_24

    const v1, 0x1554c093

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    const/4 v9, 0x0

    move v4, v8

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move-object v3, v5

    move/from16 v5, v16

    const/16 v27, 0x1

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v10, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v1, v0

    move-object v0, v10

    move-object v14, v11

    move-object v3, v12

    const/16 v16, 0x0

    goto :goto_18

    :cond_24
    move-object/from16 v1, p0

    move v4, v8

    move/from16 v5, v16

    const/16 v27, 0x1

    const v2, 0x154aedf1

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v1, v3, v6, v3}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move/from16 v26, v0

    move-object v0, v10

    const/4 v10, 0x0

    move-object v6, v3

    move-object v3, v12

    const/4 v12, 0x0

    move-object v13, v11

    move-object v11, v9

    const/4 v9, 0x0

    move-object/from16 v16, v13

    const/4 v13, 0x0

    move-object v1, v2

    move-object/from16 v14, v16

    move/from16 v15, v26

    move-object/from16 v2, p2

    move-object/from16 v16, v6

    move/from16 v6, p6

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_26

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_25

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_25
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    sget-object v9, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    invoke-static {v14, v9, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v9, 0x1

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v6, v5

    move v5, v4

    move-object v4, v3

    :goto_1a
    move v8, v7

    goto :goto_1b

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_27
    move-object v0, v10

    move-object v14, v11

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v6, p5

    move v5, v8

    goto :goto_1a

    :goto_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_28

    move-object v2, v0

    new-instance v0, Ldd;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Ldd;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIII)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    move/from16 v1, p15

    move/from16 v7, p16

    if-eqz v0, :cond_0

    const-string v8, "LayoutWithLinksAndInlineContent-11Od_4g"

    invoke-static {v0, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v8, -0x7e46da9f

    move-object/from16 v9, p14

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v9, v1, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    and-int/lit8 v13, v1, 0x30

    if-nez v13, :cond_4

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x20

    goto :goto_2

    :cond_3
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v9, v13

    :cond_4
    and-int/lit16 v13, v1, 0x180

    const/16 v16, 0x80

    if-nez v13, :cond_6

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x100

    goto :goto_3

    :cond_5
    move/from16 v13, v16

    :goto_3
    or-int/2addr v9, v13

    :cond_6
    and-int/lit16 v13, v1, 0xc00

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-nez v13, :cond_8

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_7

    move/from16 v13, v18

    goto :goto_4

    :cond_7
    move/from16 v13, v17

    :goto_4
    or-int/2addr v9, v13

    :cond_8
    and-int/lit16 v13, v1, 0x6000

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-nez v13, :cond_a

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move/from16 v13, v20

    goto :goto_5

    :cond_9
    move/from16 v13, v19

    :goto_5
    or-int/2addr v9, v13

    :cond_a
    const/high16 v13, 0x30000

    and-int/2addr v13, v1

    if-nez v13, :cond_c

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/high16 v13, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v13, 0x10000

    :goto_6
    or-int/2addr v9, v13

    :cond_c
    const/high16 v13, 0x180000

    and-int/2addr v13, v1

    if-nez v13, :cond_e

    move/from16 v13, p6

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v21

    if-eqz v21, :cond_d

    const/high16 v21, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v21, 0x80000

    :goto_7
    or-int v9, v9, v21

    goto :goto_8

    :cond_e
    move/from16 v13, p6

    :goto_8
    const/high16 v21, 0xc00000

    and-int v21, v1, v21

    move/from16 v15, p7

    if-nez v21, :cond_10

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v22, 0x400000

    :goto_9
    or-int v9, v9, v22

    :cond_10
    const/high16 v22, 0x6000000

    and-int v22, v1, v22

    move/from16 v12, p8

    if-nez v22, :cond_12

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v23

    if-eqz v23, :cond_11

    const/high16 v23, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v23, 0x2000000

    :goto_a
    or-int v9, v9, v23

    :cond_12
    const/high16 v23, 0x30000000

    and-int v23, v1, v23

    move/from16 v10, p9

    if-nez v23, :cond_14

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v24

    if-eqz v24, :cond_13

    const/high16 v24, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v24, 0x10000000

    :goto_b
    or-int v9, v9, v24

    :cond_14
    and-int/lit8 v24, v7, 0x6

    if-nez v24, :cond_16

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v24, 0x4

    goto :goto_c

    :cond_15
    const/16 v24, 0x2

    :goto_c
    or-int v24, v7, v24

    goto :goto_d

    :cond_16
    move/from16 v24, v7

    :goto_d
    and-int/lit8 v25, v7, 0x30

    if-nez v25, :cond_18

    move-object/from16 v25, v0

    move-object/from16 v0, p11

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    const/16 v21, 0x20

    goto :goto_e

    :cond_17
    const/16 v21, 0x10

    :goto_e
    or-int v24, v24, v21

    goto :goto_f

    :cond_18
    move-object/from16 v25, v0

    move-object/from16 v0, p11

    :goto_f
    and-int/lit16 v0, v7, 0x180

    move/from16 v21, v0

    const/4 v0, 0x0

    if-nez v21, :cond_1a

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/16 v16, 0x100

    :cond_19
    or-int v24, v24, v16

    :cond_1a
    and-int/lit16 v0, v7, 0xc00

    if-nez v0, :cond_1c

    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move/from16 v17, v18

    :cond_1b
    or-int v24, v24, v17

    goto :goto_10

    :cond_1c
    move-object/from16 v0, p12

    :goto_10
    and-int/lit16 v0, v7, 0x6000

    if-nez v0, :cond_1f

    const v0, 0x8000

    and-int/2addr v0, v7

    if-nez v0, :cond_1d

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11

    :cond_1d
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    :goto_11
    if-eqz v0, :cond_1e

    move/from16 v19, v20

    :cond_1e
    or-int v24, v24, v19

    :cond_1f
    move/from16 v0, v24

    const v16, 0x12492493

    and-int v1, v9, v16

    const v4, 0x12492492

    if-ne v1, v4, :cond_21

    and-int/lit16 v0, v0, 0x2493

    const/16 v1, 0x2492

    if-eq v0, v1, :cond_20

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    goto :goto_13

    :cond_21
    :goto_12
    const/4 v0, 0x1

    :goto_13
    and-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;->d(I)Z

    move-result v0

    iget-object v1, v2, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_25

    const v0, 0x8ae5063

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v0, v9, 0x70

    const/16 v7, 0x20

    if-ne v0, v7, :cond_22

    const/4 v0, 0x1

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_23

    if-ne v7, v4, :cond_24

    :cond_23
    new-instance v7, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-direct {v7, v2}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object v0, v7

    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_25
    const/4 v7, 0x0

    const v0, 0x8af50dc

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/compose/ui/text/AnnotatedString;->d(I)Z

    move-result v7

    if-eqz v7, :cond_29

    const v7, 0x8b25723

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v7, v9, 0x70

    move-object/from16 v17, v1

    const/16 v1, 0x20

    if-ne v7, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_16

    :cond_26
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_27

    if-ne v7, v4, :cond_28

    :cond_27
    new-instance v7, Landroidx/compose/foundation/text/a;

    invoke-direct {v7, v0, v2}, Landroidx/compose/foundation/text/a;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_29
    move-object/from16 v17, v1

    const v1, 0x8b3d321

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v1, v9, 0x70

    const/16 v7, 0x20

    if-ne v1, v7, :cond_2a

    const/4 v1, 0x1

    goto :goto_17

    :cond_2a
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_2b

    if-ne v7, v4, :cond_2c

    :cond_2b
    new-instance v7, Lw1;

    const/16 v1, 0xa

    invoke-direct {v7, v2, v1}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    if-eqz p3, :cond_31

    if-eqz v5, :cond_2d

    sget-object v16, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a:Lkotlin/Pair;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2e

    :cond_2d
    move-object/from16 v18, v7

    goto :goto_1a

    :cond_2e
    move-object/from16 v18, v7

    const-string v7, "androidx.compose.foundation.text.inlineContent"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v1, v10, v7}, Landroidx/compose/ui/text/AnnotatedString;->c(IILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v7

    check-cast v17, Ljava/util/Collection;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_19
    if-ge v13, v12, :cond_30

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v7

    move-object/from16 v7, v17

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    move/from16 v17, v12

    iget-object v12, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    move/from16 v20, v13

    iget v13, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/text/InlineTextContent;

    if-eqz v12, :cond_2f

    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v14, v12, Landroidx/compose/foundation/text/InlineTextContent;->a:Landroidx/compose/ui/text/Placeholder;

    invoke-direct {v5, v14, v7, v13}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v12, v12, Landroidx/compose/foundation/text/InlineTextContent;->b:Lkotlin/jvm/functions/Function3;

    invoke-direct {v5, v12, v7, v13}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v13, v20, 0x1

    move-object/from16 v5, p4

    move-object/from16 v14, p13

    move/from16 v12, v17

    move-object/from16 v7, v19

    goto :goto_19

    :cond_30
    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :goto_1a
    sget-object v5, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a:Lkotlin/Pair;

    :goto_1b
    const/4 v1, 0x0

    goto :goto_1c

    :cond_31
    move-object/from16 v18, v7

    new-instance v5, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-direct {v5, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1c
    iget-object v7, v5, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v5, v5, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    if-eqz p3, :cond_33

    const v10, 0x8b8a5ec

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_32

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_32
    move-object v1, v10

    check-cast v1, Landroidx/compose/runtime/MutableState;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_33
    const/4 v10, 0x0

    const v1, 0x8b9fcbc    # 1.11937E-33f

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v1, 0x0

    :goto_1d
    if-eqz p3, :cond_36

    const v10, 0x8bb68fd

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_34

    if-ne v12, v4, :cond_35

    :cond_34
    new-instance v12, Lj6;

    const/4 v10, 0x6

    invoke-direct {v12, v10, v1}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_35
    move-object v10, v12

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v16, v10

    :goto_1e
    move v10, v12

    goto :goto_1f

    :cond_36
    const/4 v12, 0x0

    const v10, 0x8bc7ffc

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/16 v16, 0x0

    goto :goto_1e

    :goto_1f
    shr-int/lit8 v12, v9, 0x3

    and-int/lit8 v12, v12, 0xe

    invoke-static {v2, v6, v11, v7, v8}, Landroidx/compose/foundation/text/BasicText_androidKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/Composer;)V

    invoke-interface/range {v18 .. v18}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    and-int/lit16 v9, v9, 0x380

    const/16 v10, 0x100

    if-ne v9, v10, :cond_37

    const/4 v9, 0x1

    goto :goto_20

    :cond_37
    const/4 v9, 0x0

    :goto_20
    or-int/2addr v9, v14

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_39

    if-ne v10, v4, :cond_38

    goto :goto_21

    :cond_38
    const/4 v9, 0x0

    goto :goto_22

    :cond_39
    :goto_21
    new-instance v10, Lzc;

    const/4 v9, 0x0

    invoke-direct {v10, v0, v3, v9}, Lzc;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_22
    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object v3, v8

    move v2, v9

    move-object v9, v10

    move-object v14, v11

    move/from16 v27, v12

    move v11, v15

    move/from16 v10, p6

    move/from16 v12, p8

    move-object v8, v6

    move-object v15, v7

    move-object v7, v13

    move-object/from16 v6, v25

    move/from16 v13, p9

    invoke-static/range {v6 .. v19}, Landroidx/compose/foundation/text/BasicTextKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-nez p3, :cond_3c

    const v1, 0x8ce8017

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_3a

    if-ne v8, v4, :cond_3b

    :cond_3a
    new-instance v8, Lad;

    invoke-direct {v8, v0, v2}, Lad;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v8, Lkotlin/jvm/functions/Function0;

    new-instance v1, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    invoke-direct {v1, v8}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :cond_3c
    const v8, 0x8d13291

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_3d

    if-ne v9, v4, :cond_3e

    :cond_3d
    new-instance v9, Lad;

    const/4 v8, 0x1

    invoke-direct {v9, v0, v8}, Lad;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3e
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_3f

    if-ne v10, v4, :cond_40

    :cond_3f
    new-instance v10, Ld0;

    const/16 v4, 0xc

    invoke-direct {v10, v4, v1}, Ld0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_40
    check-cast v10, Lkotlin/jvm/functions/Function0;

    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v1, v9, v10}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_23
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v8, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v3, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_44

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_41

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_24

    :cond_41
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_24
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v7, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v0, :cond_42

    const v0, -0x19d78e09

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    :goto_25
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_26

    :cond_42
    const v1, -0x115988b6

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v3, v2}, Landroidx/compose/foundation/text/TextLinkScope;->a(Landroidx/compose/runtime/Composer;I)V

    goto :goto_25

    :goto_26
    if-nez v5, :cond_43

    const v0, -0x19d6c7af

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v0, p1

    :goto_27
    const/4 v8, 0x1

    goto :goto_28

    :cond_43
    const v0, -0x19d6c7ae

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v5, v3, v1}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_27

    :goto_28
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_29

    :cond_44
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v1, 0x0

    throw v1

    :cond_45
    move-object v0, v2

    move-object v3, v8

    move-object/from16 v6, v25

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_29
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_46

    new-instance v0, Lbd;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v28, v1

    move-object v1, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v16}, Lbd;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;II)V

    move-object v1, v0

    move-object/from16 v0, v28

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_46
    return-void
.end method

.method public static final d(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;
    .locals 8

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;

    invoke-direct {p1}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->b:Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;

    invoke-interface {v4, p1}, Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;->b(Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;)Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/unit/Constraints;->b:Landroidx/compose/ui/unit/Constraints$Companion;

    iget v6, v4, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->a:I

    iget v7, v4, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->b:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v6, v7, v7}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    new-instance v5, Lkotlin/Pair;

    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/TextAutoSize;)Landroidx/compose/ui/Modifier;
    .locals 17

    move-object/from16 v0, p0

    const/4 v13, 0x0

    if-nez p11, :cond_0

    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v15, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v16}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/foundation/text/TextAutoSize;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v12, Landroidx/compose/foundation/text/modifiers/SelectionController;->g:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
