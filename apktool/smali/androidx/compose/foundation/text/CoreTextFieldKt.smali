.class public abstract Landroidx/compose/foundation/text/CoreTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "writeable",
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
.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 73

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    move-object/from16 v14, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move/from16 v9, p8

    move/from16 v5, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p13

    move/from16 v12, p17

    move/from16 v13, p18

    iget v15, v6, Landroidx/compose/ui/text/input/ImeOptions;->d:I

    move/from16 v16, v15

    const-string v15, "CoreTextField"

    if-eqz v0, :cond_0

    invoke-static {v0, v15}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object/from16 v17, v15

    const v15, 0x1d9f981

    move-object/from16 v10, p16

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v15, v12, 0x6

    const/16 v18, 0x2

    move/from16 p2, v15

    if-nez p2, :cond_2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x4

    goto :goto_0

    :cond_1
    move/from16 v19, v18

    :goto_0
    or-int v19, v12, v19

    goto :goto_1

    :cond_2
    move/from16 v19, v12

    :goto_1
    and-int/lit8 v20, v12, 0x30

    const/16 v21, 0x10

    if-nez v20, :cond_4

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x20

    goto :goto_2

    :cond_3
    move/from16 v20, v21

    :goto_2
    or-int v19, v19, v20

    :cond_4
    const/16 p16, 0x20

    and-int/lit16 v15, v12, 0x180

    const/16 v20, 0x80

    const/16 v22, 0x100

    if-nez v15, :cond_6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move/from16 v15, v22

    goto :goto_3

    :cond_5
    move/from16 v15, v20

    :goto_3
    or-int v19, v19, v15

    :cond_6
    and-int/lit16 v15, v12, 0xc00

    const/16 v23, 0x400

    move/from16 v24, v15

    if-nez v24, :cond_8

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    const/16 v24, 0x800

    goto :goto_4

    :cond_7
    move/from16 v24, v23

    :goto_4
    or-int v19, v19, v24

    :cond_8
    and-int/lit16 v15, v12, 0x6000

    const/16 v25, 0x2000

    move/from16 v26, v15

    if-nez v26, :cond_a

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x4000

    goto :goto_5

    :cond_9
    move/from16 v26, v25

    :goto_5
    or-int v19, v19, v26

    :cond_a
    const/high16 v26, 0x30000

    and-int v27, v12, v26

    const/high16 v28, 0x20000

    const/high16 v29, 0x10000

    move-object/from16 v15, p5

    if-nez v27, :cond_c

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    move/from16 v30, v28

    goto :goto_6

    :cond_b
    move/from16 v30, v29

    :goto_6
    or-int v19, v19, v30

    :cond_c
    const/high16 v30, 0x180000

    and-int v31, v12, v30

    if-nez v31, :cond_e

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    const/high16 v31, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v31, 0x80000

    :goto_7
    or-int v19, v19, v31

    :cond_e
    const/high16 v31, 0xc00000

    and-int v31, v12, v31

    if-nez v31, :cond_10

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    const/high16 v31, 0x800000

    goto :goto_8

    :cond_f
    const/high16 v31, 0x400000

    :goto_8
    or-int v19, v19, v31

    :cond_10
    const/high16 v31, 0x6000000

    and-int v31, v12, v31

    if-nez v31, :cond_12

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v31

    if-eqz v31, :cond_11

    const/high16 v31, 0x4000000

    goto :goto_9

    :cond_11
    const/high16 v31, 0x2000000

    :goto_9
    or-int v19, v19, v31

    :cond_12
    const/high16 v31, 0x30000000

    and-int v31, v12, v31

    if-nez v31, :cond_14

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v31

    if-eqz v31, :cond_13

    const/high16 v31, 0x20000000

    goto :goto_a

    :cond_13
    const/high16 v31, 0x10000000

    :goto_a
    or-int v19, v19, v31

    :cond_14
    and-int/lit8 v31, v13, 0x6

    move/from16 v15, p10

    if-nez v31, :cond_16

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v31

    if-eqz v31, :cond_15

    const/16 v18, 0x4

    :cond_15
    or-int v18, v13, v18

    goto :goto_b

    :cond_16
    move/from16 v18, v13

    :goto_b
    and-int/lit8 v31, v13, 0x30

    if-nez v31, :cond_18

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    move/from16 v21, p16

    :cond_17
    or-int v18, v18, v21

    :cond_18
    move-object/from16 v31, v0

    and-int/lit16 v0, v13, 0x180

    if-nez v0, :cond_1a

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v20, v22

    :cond_19
    or-int v18, v18, v20

    :cond_1a
    and-int/lit16 v0, v13, 0xc00

    if-nez v0, :cond_1c

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v23, 0x800

    :cond_1b
    or-int v18, v18, v23

    :cond_1c
    and-int/lit16 v0, v13, 0x6000

    if-nez v0, :cond_1e

    move/from16 v0, p14

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_1d

    const/16 v25, 0x4000

    :cond_1d
    or-int v18, v18, v25

    goto :goto_c

    :cond_1e
    move/from16 v0, p14

    :goto_c
    and-int v20, v13, v26

    move-object/from16 v15, p15

    if-nez v20, :cond_20

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f

    goto :goto_d

    :cond_1f
    move/from16 v28, v29

    :goto_d
    or-int v18, v18, v28

    :cond_20
    or-int v15, v18, v30

    const v18, 0x12492493

    and-int v0, v19, v18

    const v2, 0x12492492

    move/from16 v18, v15

    if-ne v0, v2, :cond_22

    const v0, 0x92493

    and-int v0, v18, v0

    const v2, 0x92492

    if-eq v0, v2, :cond_21

    goto :goto_e

    :cond_21
    const/4 v0, 0x0

    goto :goto_f

    :cond_22
    :goto_e
    const/4 v0, 0x1

    :goto_f
    and-int/lit8 v2, v19, 0x1

    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_10

    :cond_23
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_24
    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_25

    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v2, :cond_26

    sget-object v15, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->a:Lkotlin/jvm/functions/Function1;

    new-instance v15, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    invoke-direct {v15}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;-><init>()V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v15, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_27

    new-instance v4, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v4, v15}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v4, Landroidx/compose/ui/text/input/TextInputService;

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Density;

    move-object/from16 v22, v8

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v23, v8

    sget-object v8, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    iget-wide v8, v8, Landroidx/compose/foundation/text/selection/TextSelectionColors;->b:J

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/focus/FocusManager;

    move-object/from16 v25, v12

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->v:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/platform/WindowInfo;

    move-object/from16 v26, v12

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->r:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    const/4 v13, 0x1

    if-ne v5, v13, :cond_28

    if-nez p8, :cond_28

    iget-boolean v13, v6, Landroidx/compose/ui/text/input/ImeOptions;->a:Z

    if-eqz v13, :cond_28

    sget-object v13, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_11

    :cond_28
    sget-object v13, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_11
    const v5, -0xcbd7bf2

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v28, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->g:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->h:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    move-object/from16 v28, v15

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    move/from16 v29, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v29, :cond_29

    if-ne v15, v2, :cond_2a

    :cond_29
    new-instance v15, Lw1;

    const/16 v6, 0x1c

    invoke-direct {v15, v13, v6}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static {v5, v14, v15, v10, v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v14, v5, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    check-cast v14, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/foundation/gestures/Orientation;

    if-eq v14, v13, :cond_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v13, v1, :cond_2b

    const-string v1, "only single-line, non-wrap text fields can scroll horizontally"

    goto :goto_12

    :cond_2b
    const-string v1, "single-line, non-wrap text fields can only scroll horizontally"

    :goto_12
    const-string v2, "Mismatching scroller orientation; "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    and-int/lit8 v13, v19, 0xe

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2d

    const/4 v15, 0x1

    goto :goto_13

    :cond_2d
    move v15, v6

    :goto_13
    const v29, 0xe000

    and-int v6, v19, v29

    const/16 v14, 0x4000

    if-ne v6, v14, :cond_2e

    const/4 v6, 0x1

    goto :goto_14

    :cond_2e
    const/4 v6, 0x0

    :goto_14
    or-int/2addr v6, v15

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_30

    if-ne v15, v2, :cond_2f

    goto :goto_15

    :cond_2f
    move-object/from16 v30, v5

    move/from16 v19, v13

    goto/16 :goto_17

    :cond_30
    :goto_15
    iget-object v6, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v1, v6}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->a(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v6

    iget-object v15, v3, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    if-eqz v15, :cond_31

    iget-wide v14, v15, Landroidx/compose/ui/text/TextRange;->a:J

    sget-object v19, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v30, v5

    iget-object v5, v6, Landroidx/compose/ui/text/input/TransformedText;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    sget-object v19, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    move/from16 v19, v13

    move-wide/from16 v32, v14

    shr-long v13, v32, p16

    long-to-int v13, v13

    invoke-interface {v5, v13}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v13

    const-wide v14, 0xffffffffL

    and-long v14, v32, v14

    long-to-int v14, v14

    invoke-interface {v5, v14}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    new-instance v14, Landroidx/compose/ui/text/AnnotatedString$Builder;

    iget-object v6, v6, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v14, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    new-instance v32, Landroidx/compose/ui/text/SpanStyle;

    sget-object v6, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v49, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    const v53, 0xefff

    const/16 v54, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-direct/range {v32 .. v54}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v32

    invoke-virtual {v14, v6, v15, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder;->c(Landroidx/compose/ui/text/SpanStyle;II)V

    invoke-virtual {v14}, Landroidx/compose/ui/text/AnnotatedString$Builder;->i()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v6

    new-instance v13, Landroidx/compose/ui/text/input/TransformedText;

    invoke-direct {v13, v6, v5}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object v15, v13

    goto :goto_16

    :cond_31
    move-object/from16 v30, v5

    move/from16 v19, v13

    move-object v15, v6

    :goto_16
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    move-object v5, v15

    check-cast v5, Landroidx/compose/ui/text/input/TransformedText;

    iget-object v13, v5, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v6, v5, Landroidx/compose/ui/text/input/TransformedText;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->u()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_72

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->E(Landroidx/compose/runtime/RecomposeScope;)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v32, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v15, :cond_33

    if-ne v5, v2, :cond_32

    goto :goto_18

    :cond_32
    move-object/from16 v14, p3

    move-object/from16 p2, v0

    move-object/from16 p16, v2

    move-object/from16 v39, v4

    move-object/from16 v24, v6

    move-object v6, v13

    move/from16 v55, v16

    move-object/from16 v60, v17

    move/from16 v56, v18

    move/from16 v59, v19

    move-object/from16 v13, v22

    move-object/from16 v15, v23

    move-object/from16 v4, v25

    move-object/from16 v58, v26

    move-object/from16 v57, v28

    goto :goto_19

    :cond_33
    :goto_18
    new-instance v5, Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-object v15, v12

    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    move/from16 v33, v19

    move-object/from16 v19, v22

    const/16 v22, 0x12c

    move-object/from16 v20, v23

    const/16 v34, 0x0

    const/16 v23, 0x0

    move-object/from16 v35, v15

    const/4 v15, 0x0

    move/from16 v36, v16

    const/16 v16, 0x0

    move/from16 v37, v18

    const/16 v18, 0x0

    const/16 v38, 0x1

    const/16 v21, 0x0

    move-object/from16 p2, v0

    move-object/from16 v39, v4

    move-object/from16 v24, v6

    move-object v1, v14

    move-object/from16 v60, v17

    move-object/from16 v4, v25

    move-object/from16 v58, v26

    move-object/from16 v57, v28

    move/from16 v59, v33

    move-object/from16 v0, v35

    move/from16 v55, v36

    move/from16 v56, v37

    move/from16 v6, v38

    move-object/from16 v14, p3

    move/from16 v17, p8

    invoke-direct/range {v12 .. v23}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p16, v2

    move-object v2, v12

    move-object v6, v13

    move-object/from16 v13, v19

    move-object/from16 v15, v20

    invoke-direct {v5, v2, v1, v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    move-object v1, v5

    check-cast v1, Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v0, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v22, v13

    iget-wide v12, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    iput-object v11, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->u:Lkotlin/jvm/functions/Function1;

    iput-wide v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->z:J

    iget-object v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->r:Landroidx/compose/foundation/text/KeyboardActionRunner;

    iput-object v7, v2, Landroidx/compose/foundation/text/KeyboardActionRunner;->b:Landroidx/compose/foundation/text/KeyboardActions;

    iput-object v4, v2, Landroidx/compose/foundation/text/KeyboardActionRunner;->c:Landroidx/compose/ui/focus/FocusManager;

    iput-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->j:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/style/TextOverflow;->b:I

    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    iget-boolean v8, v0, Landroidx/compose/foundation/text/TextDelegate;->e:Z

    move/from16 v9, p8

    if-ne v8, v9, :cond_37

    iget v8, v0, Landroidx/compose/foundation/text/TextDelegate;->f:I

    if-ne v8, v5, :cond_37

    iget v8, v0, Landroidx/compose/foundation/text/TextDelegate;->c:I

    move-object/from16 v25, v4

    const v4, 0x7fffffff

    if-ne v8, v4, :cond_36

    iget v8, v0, Landroidx/compose/foundation/text/TextDelegate;->d:I

    const/4 v4, 0x1

    if-ne v8, v4, :cond_36

    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->g:Landroidx/compose/ui/unit/Density;

    move-object/from16 v4, v22

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->i:Ljava/util/List;

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->h:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    if-eq v8, v15, :cond_35

    :cond_34
    :goto_1a
    move-wide/from16 v18, v12

    goto :goto_1d

    :cond_35
    move-object/from16 v19, v4

    move-wide v4, v12

    goto :goto_1e

    :cond_36
    :goto_1b
    move-object/from16 v4, v22

    goto :goto_1a

    :cond_37
    :goto_1c
    move-object/from16 v25, v4

    goto :goto_1b

    :cond_38
    move/from16 v9, p8

    goto :goto_1c

    :goto_1d
    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    const/16 v22, 0x0

    move-object/from16 v21, v2

    move-object v13, v6

    move/from16 v17, v9

    move-object/from16 v20, v15

    const v15, 0x7fffffff

    const/16 v16, 0x1

    move-wide/from16 v71, v18

    move-object/from16 v19, v4

    move/from16 v18, v5

    move-wide/from16 v4, v71

    invoke-direct/range {v12 .. v22}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IIZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v12

    :goto_1e
    iget-object v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    if-eq v2, v0, :cond_39

    const/4 v13, 0x1

    iput-boolean v13, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->p:Z

    :cond_39
    iput-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    iget-object v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    iget-object v8, v0, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-virtual {v8}, Landroidx/compose/ui/text/input/EditingBuffer;->c()Landroidx/compose/ui/text/TextRange;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v0, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v9, v9, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v9, v9, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    iget-object v12, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v13, v12, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const/4 v13, 0x0

    if-nez v9, :cond_3a

    new-instance v9, Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-direct {v9, v12, v4, v5, v13}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v0, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    const/4 v9, 0x0

    const/4 v15, 0x1

    goto :goto_20

    :cond_3a
    iget-object v9, v0, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-wide v13, v9, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v13, v14, v4, v5}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    move-result v9

    if-nez v9, :cond_3b

    iget-object v9, v0, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v13

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v14

    invoke-virtual {v9, v13, v14}, Landroidx/compose/ui/text/input/EditingBuffer;->h(II)V

    const/4 v9, 0x1

    :goto_1f
    const/4 v15, 0x0

    goto :goto_20

    :cond_3b
    const/4 v9, 0x0

    goto :goto_1f

    :goto_20
    const/4 v13, -0x1

    if-nez v6, :cond_3c

    iget-object v6, v0, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    iput v13, v6, Landroidx/compose/ui/text/input/EditingBuffer;->d:I

    iput v13, v6, Landroidx/compose/ui/text/input/EditingBuffer;->e:I

    goto :goto_21

    :cond_3c
    iget-wide v12, v6, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v6

    if-nez v6, :cond_3d

    iget-object v6, v0, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v14

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v12

    invoke-virtual {v6, v14, v12}, Landroidx/compose/ui/text/input/EditingBuffer;->g(II)V

    :cond_3d
    :goto_21
    const-wide/16 v13, 0x0

    if-nez v15, :cond_3f

    if-nez v9, :cond_3e

    if-nez v8, :cond_3e

    goto :goto_22

    :cond_3e
    move-object v6, v3

    goto :goto_23

    :cond_3f
    :goto_22
    iget-object v6, v0, Landroidx/compose/ui/text/input/EditProcessor;->b:Landroidx/compose/ui/text/input/EditingBuffer;

    const/4 v8, -0x1

    iput v8, v6, Landroidx/compose/ui/text/input/EditingBuffer;->d:I

    iput v8, v6, Landroidx/compose/ui/text/input/EditingBuffer;->e:I

    const/4 v6, 0x3

    const/4 v12, 0x0

    invoke-static {v3, v12, v13, v14, v6}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v6

    :goto_23
    iget-object v8, v0, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object v6, v0, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz v2, :cond_40

    iget-object v0, v2, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextInputSession;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, v2, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v0, v8, v6}, Landroidx/compose/ui/text/input/PlatformTextInputService;->e(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_40
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p16

    if-ne v0, v2, :cond_41

    new-instance v0, Landroidx/compose/foundation/text/UndoManager;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    invoke-direct {v0, v6, v8, v12}, Landroidx/compose/foundation/text/UndoManager;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_24

    :cond_41
    const/4 v8, 0x1

    :goto_24
    move-object v15, v0

    check-cast v15, Landroidx/compose/foundation/text/UndoManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-boolean v0, v15, Landroidx/compose/foundation/text/UndoManager;->f:Z

    if-nez v0, :cond_43

    iget-object v0, v15, Landroidx/compose/foundation/text/UndoManager;->e:Ljava/lang/Long;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :cond_42
    const-wide/16 v20, 0x1388

    add-long v13, v13, v20

    cmp-long v0, v16, v13

    if-lez v0, :cond_44

    :cond_43
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Landroidx/compose/foundation/text/UndoManager;->e:Ljava/lang/Long;

    invoke-virtual {v15, v3}, Landroidx/compose/foundation/text/UndoManager;->a(Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_44
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_45

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_45
    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_46

    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->a()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_46
    move-object v13, v0

    check-cast v13, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_47

    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, v15}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_47
    move-object v14, v0

    check-cast v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-object/from16 v6, v24

    iput-object v6, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 v0, p4

    iput-object v0, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->f:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Llq;

    iput-object v8, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c:Lkotlin/jvm/functions/Function1;

    iput-object v1, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v8, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e:Landroidx/compose/runtime/MutableState;

    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    new-instance v8, Landroidx/compose/ui/text/TextRange;

    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    iput-object v8, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->x:Landroidx/compose/ui/text/TextRange;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/Clipboard;

    iput-object v4, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h:Landroidx/compose/ui/platform/Clipboard;

    iput-object v9, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i:Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->s:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/TextToolbar;

    iput-object v4, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k:Landroidx/compose/ui/platform/TextToolbar;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object v4, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->l:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v4, p2

    iput-object v4, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m:Landroidx/compose/ui/focus/FocusRequester;

    xor-int/lit8 v16, p14, 0x1

    iget-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:Landroidx/compose/runtime/MutableState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v5, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o:Landroidx/compose/runtime/MutableState;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    const v5, 0x753a5109

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v5, Landroidx/compose/foundation/text/selection/SelectedTextType;->EditableText:Landroidx/compose/foundation/text/selection/SelectedTextType;

    move-object/from16 v8, p3

    iget-object v12, v8, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v12, v12, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v18, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v0, 0x19a9604b

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    or-int v18, v18, v20

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    or-int v18, v18, v20

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v18, :cond_48

    if-ne v4, v2, :cond_49

    :cond_48
    sget-object v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->b:Lqn;

    invoke-virtual {v4, v3, v0, v5, v12}, Lqn;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_49
    check-cast v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->F()V

    iput-object v4, v14, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v3, v60

    invoke-direct {v12, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    move/from16 v5, v56

    and-int/lit16 v11, v5, 0x1c00

    move-object/from16 p16, v15

    const/16 v15, 0x800

    if-ne v11, v15, :cond_4a

    const/16 v18, 0x1

    goto :goto_25

    :cond_4a
    move/from16 v18, v0

    :goto_25
    or-int v4, v4, v18

    and-int v0, v5, v29

    const/16 v15, 0x4000

    if-ne v0, v15, :cond_4b

    const/4 v15, 0x1

    goto :goto_26

    :cond_4b
    const/4 v15, 0x0

    :goto_26
    or-int v0, v4, v15

    move-object/from16 v4, v39

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v0, v15

    move/from16 v18, v11

    move/from16 v15, v59

    const/4 v11, 0x4

    if-ne v15, v11, :cond_4c

    const/16 v22, 0x1

    goto :goto_27

    :cond_4c
    const/16 v22, 0x0

    :goto_27
    or-int v0, v0, v22

    and-int/lit8 v22, v5, 0x70

    xor-int/lit8 v11, v22, 0x30

    move/from16 v33, v15

    const/16 v15, 0x20

    if-le v11, v15, :cond_4e

    move-object/from16 v15, p11

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4d

    goto :goto_28

    :cond_4d
    move/from16 v22, v0

    move-object/from16 v23, v1

    goto :goto_29

    :cond_4e
    move-object/from16 v15, p11

    :goto_28
    move/from16 v22, v0

    and-int/lit8 v0, v5, 0x30

    move-object/from16 v23, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4f

    :goto_29
    const/4 v0, 0x1

    goto :goto_2a

    :cond_4f
    const/4 v0, 0x0

    :goto_2a
    or-int v0, v22, v0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_51

    if-ne v1, v2, :cond_50

    goto :goto_2b

    :cond_50
    move-object v0, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v10

    move-object v10, v0

    move-object/from16 v7, p0

    move/from16 v8, p13

    move-object v0, v1

    move-object/from16 v65, v2

    move-object/from16 v64, v3

    move/from16 v37, v5

    move-object/from16 v20, v13

    move-object v2, v14

    move-object/from16 v1, v23

    move-object/from16 v62, v25

    move-object/from16 v63, v30

    move-object/from16 v61, v31

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    goto :goto_2c

    :cond_51
    :goto_2b
    new-instance v0, Landroidx/compose/foundation/text/c;

    move-object/from16 v65, v2

    move-object/from16 v64, v3

    move/from16 v37, v5

    move-object v7, v6

    move-object v8, v14

    move-object v6, v15

    move-object/from16 v1, v23

    move-object/from16 v62, v25

    move-object/from16 v63, v30

    move-object/from16 v61, v31

    move-object/from16 v5, p0

    move-object/from16 v14, p6

    move/from16 v2, p13

    move/from16 v3, p14

    move-object v15, v10

    move-object v10, v13

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/c;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    move-object/from16 v20, v8

    move v8, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v10

    move-object v10, v9

    move-object v9, v7

    move-object v7, v5

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v13}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v8, v14}, Landroidx/compose/foundation/FocusableKt;->b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-eqz v8, :cond_52

    if-nez p14, :cond_52

    const/4 v0, 0x1

    goto :goto_2d

    :cond_52
    const/4 v0, 0x0

    :goto_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v15}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    move-object/from16 p2, v0

    const/16 v0, 0x20

    if-le v11, v0, :cond_54

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_53

    goto :goto_2e

    :cond_53
    move-object/from16 v23, v1

    goto :goto_2f

    :cond_54
    :goto_2e
    move-object/from16 v23, v1

    and-int/lit8 v1, v37, 0x30

    if-ne v1, v0, :cond_55

    :goto_2f
    const/4 v0, 0x1

    goto :goto_30

    :cond_55
    const/4 v0, 0x0

    :goto_30
    or-int/2addr v0, v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_57

    move-object/from16 v0, v65

    if-ne v1, v0, :cond_56

    move-object/from16 v65, v0

    goto :goto_31

    :cond_56
    move-object/from16 v21, p2

    move-object v8, v3

    move-object/from16 p2, v13

    move-object v13, v0

    move-object v0, v1

    move-object/from16 v1, v23

    goto :goto_32

    :cond_57
    :goto_31
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;

    const/4 v6, 0x0

    move-object/from16 v5, p11

    move-object v8, v3

    move-object v3, v4

    move-object/from16 v1, v23

    move-object v4, v2

    move-object/from16 v2, p2

    move-object/from16 p2, v13

    move-object/from16 v13, v65

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v21, v2

    move-object v2, v4

    move-object v4, v3

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_32
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v8, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v8, v64

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "textFieldPointer"

    invoke-direct {v3, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v3, Llq;

    const/4 v5, 0x4

    invoke-direct {v3, v1, v5}, Llq;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    invoke-static {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->f(Landroidx/compose/ui/Modifier;Llq;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v3, v0

    new-instance v0, Lb31;

    move-object v5, v2

    move-object v6, v9

    move-object/from16 v2, p2

    move-object v9, v3

    move-object/from16 p2, v12

    move/from16 v3, p14

    move-object v12, v4

    move/from16 v4, p13

    invoke-direct/range {v0 .. v6}, Lb31;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v22, v10

    move-object v10, v2

    move-object v2, v5

    if-eqz p13, :cond_58

    new-instance v3, Landroidx/compose/foundation/text/k;

    invoke-direct {v3, v0, v14}, Landroidx/compose/foundation/text/k;-><init>(Lb31;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    sget-object v0, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0, v3}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_33

    :cond_58
    move-object v0, v9

    :goto_33
    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->B:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;

    iget-object v4, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->A:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    new-instance v5, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;

    invoke-direct {v5, v2}, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    new-instance v25, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v30, 0x4

    const/16 v31, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    invoke-direct/range {v25 .. v31}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v25

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerIcon;->a:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->c:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    invoke-static {v0, v3}, Landroidx/compose/ui/input/pointer/PointerIconKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Ln0;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v7, v6, v4}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v4, v18

    const/16 v5, 0x800

    if-ne v4, v5, :cond_59

    const/4 v4, 0x1

    goto :goto_34

    :cond_59
    const/4 v4, 0x0

    :goto_34
    or-int/2addr v3, v4

    move-object/from16 v4, v58

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    move-object/from16 v18, v0

    move/from16 v5, v33

    const/4 v0, 0x4

    if-ne v5, v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_35

    :cond_5a
    const/4 v0, 0x0

    :goto_35
    or-int/2addr v0, v3

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_5c

    if-ne v3, v13, :cond_5b

    goto :goto_36

    :cond_5b
    move-object/from16 v26, v4

    move/from16 v33, v5

    move-object/from16 v7, v18

    goto :goto_37

    :cond_5c
    :goto_36
    new-instance v0, Landroidx/compose/foundation/text/d;

    move-object v3, v4

    move/from16 v33, v5

    move-object v5, v7

    move-object/from16 v7, v18

    move-object v4, v2

    move/from16 v2, p13

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/d;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v26, v3

    move-object v2, v4

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_37
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    move-object/from16 v0, p4

    move-object v7, v6

    instance-of v6, v0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    new-instance v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;

    move/from16 v5, p13

    move/from16 v4, p14

    move-object v3, v1

    move-object/from16 v67, v9

    move-object/from16 v66, v22

    move-object/from16 v1, v32

    move/from16 v14, v33

    move-object/from16 v9, p11

    move/from16 v22, v11

    move-object v11, v8

    move-object v8, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;-><init>(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/focus/FocusRequester;)V

    move-object v1, v3

    move v10, v5

    move-object v6, v9

    move-object v9, v0

    move-object v3, v2

    if-eqz v10, :cond_5e

    if-nez p14, :cond_5e

    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/platform/WindowInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->A:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    iget-wide v4, v0, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->B:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    iget-wide v4, v0, Landroidx/compose/ui/text/TextRange;->a:J

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_38

    :cond_5d
    const/4 v0, 0x1

    goto :goto_39

    :cond_5e
    :goto_38
    const/4 v0, 0x0

    :goto_39
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5f

    new-instance v0, Landroidx/compose/foundation/text/h;

    move-object/from16 v4, p7

    invoke-direct {v0, v4, v1, v3, v7}, Landroidx/compose/foundation/text/h;-><init>(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    sget-object v5, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_3a
    move-object/from16 v24, v2

    goto :goto_3b

    :cond_5f
    move-object/from16 v4, p7

    goto :goto_3a

    :goto_3b
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_61

    if-ne v2, v13, :cond_60

    goto :goto_3c

    :cond_60
    const/4 v0, 0x0

    goto :goto_3d

    :cond_61
    :goto_3c
    new-instance v2, Loq;

    const/4 v0, 0x0

    invoke-direct {v2, v8, v0}, Loq;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_3d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v2, v15}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    const/4 v5, 0x4

    if-ne v14, v5, :cond_62

    const/4 v5, 0x1

    goto :goto_3e

    :cond_62
    move v5, v0

    :goto_3e
    or-int/2addr v2, v5

    move/from16 v5, v22

    const/16 v14, 0x20

    if-le v5, v14, :cond_63

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    :cond_63
    and-int/lit8 v5, v37, 0x30

    if-ne v5, v14, :cond_65

    :cond_64
    const/4 v5, 0x1

    goto :goto_3f

    :cond_65
    move v5, v0

    :goto_3f
    or-int/2addr v2, v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_66

    if-ne v5, v13, :cond_67

    :cond_66
    move/from16 v34, v0

    goto :goto_40

    :cond_67
    move v12, v0

    move-object v14, v6

    goto :goto_41

    :goto_40
    new-instance v0, Lk3;

    const/4 v5, 0x7

    move-object v4, v6

    move-object v2, v12

    move/from16 v12, v34

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v14, v4

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_41
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v5, v15}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    iget-object v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Llq;

    move/from16 v3, p9

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    move v5, v4

    :goto_42
    move-object v6, v9

    goto :goto_43

    :cond_68
    move v5, v12

    goto :goto_42

    :goto_43
    iget v9, v14, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    move-object/from16 v22, v0

    new-instance v0, Landroidx/compose/foundation/text/j;

    move-object/from16 v3, p0

    move v12, v4

    move/from16 v4, v16

    move-object/from16 v14, v22

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v7, p16

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/j;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V

    sget-object v3, Landroidx/compose/ui/platform/InspectableValueKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->i:I

    move/from16 v5, v55

    if-ne v5, v4, :cond_69

    goto :goto_44

    :cond_69
    sget v4, Landroidx/compose/ui/text/input/KeyboardType;->j:I

    if-ne v5, v4, :cond_6a

    :goto_44
    const/4 v4, 0x0

    goto :goto_45

    :cond_6a
    move v4, v12

    :goto_45
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    move-object/from16 v9, v57

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v8, v14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v8, :cond_6b

    if-ne v14, v13, :cond_6c

    :cond_6b
    new-instance v14, Lhf;

    invoke-direct {v14, v4, v9, v12}, Lhf;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6c
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v7, v4, v14}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->a(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;ZZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/text/AutofillHighlightKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Brush;

    sget-object v7, Landroidx/compose/foundation/text/AutofillHighlightKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    iget-wide v7, v7, Landroidx/compose/ui/graphics/Color;->a:J

    const v14, 0x4dffeb3b    # 5.36700768E8f

    move-object/from16 p16, v13

    invoke-static {v14}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v12

    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v12

    if-nez v12, :cond_6d

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v12, 0x0

    invoke-direct {v5, v7, v8, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_6d
    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_6e

    move-object/from16 v13, p16

    if-ne v12, v13, :cond_6f

    :cond_6e
    new-instance v12, Lvg;

    const/16 v8, 0x14

    invoke-direct {v12, v1, v5, v8}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v12}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v7, v61

    invoke-interface {v7, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v9, v1, v2}, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNodeKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v5, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;

    move-object/from16 v12, v62

    invoke-direct {v5, v12, v1}, Landroidx/compose/foundation/text/TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1;-><init>(Landroidx/compose/ui/focus/FocusManager;Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    invoke-static {v4, v5}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;

    invoke-direct {v5, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {v4, v5}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v4, Lcu;

    move-object/from16 v14, p6

    move-object/from16 v5, v63

    const/4 v8, 0x4

    invoke-direct {v4, v5, v10, v14, v8}, Lcu;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v4, v67

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v9, v16

    invoke-interface {v0, v9}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v4, Llq;

    const/4 v12, 0x0

    invoke-direct {v4, v1, v12}, Llq;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    invoke-static {v0, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v4, Landroidx/compose/foundation/text/selection/e;

    move-object/from16 v9, v66

    invoke-direct {v4, v2, v9}, Landroidx/compose/foundation/text/selection/e;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-static {v0, v4}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifier_androidKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/e;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v10, :cond_70

    invoke-virtual {v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    move-result v4

    if-eqz v4, :cond_70

    iget-object v4, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->q:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/platform/WindowInfo;->a()Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v21, 0x1

    goto :goto_46

    :cond_70
    move/from16 v21, v12

    :goto_46
    if-eqz v21, :cond_71

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroidx/compose/foundation/Magnifier_androidKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v8, Lxe0;

    const/16 v9, 0x12

    invoke-direct {v8, v2, v9}, Lxe0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v3, v8}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :goto_47
    move-object v12, v3

    move-object v3, v0

    goto :goto_48

    :cond_71
    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_47

    :goto_48
    new-instance v0, Lmq;

    move-object/from16 v8, p4

    move-object/from16 v17, p5

    move/from16 v4, p10

    move/from16 v16, p14

    move-object v14, v2

    move-object/from16 v69, v3

    move-object/from16 v31, v7

    move-object/from16 v68, v15

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move/from16 v15, v21

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move-object v2, v1

    move-object/from16 v18, v6

    move-object/from16 v1, p15

    move-object v6, v5

    move/from16 v5, p9

    invoke-direct/range {v0 .. v19}, Lmq;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    move-object v2, v14

    const v1, -0x308d4209

    move-object/from16 v15, v68

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x180

    move-object/from16 v3, v69

    invoke-static {v3, v2, v0, v15, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_49

    :cond_72
    const-string v0, "no recompose scope found"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_73
    move-object v15, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_49
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_74

    move-object v1, v0

    new-instance v0, Lnq;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v70, v1

    move-object/from16 v3, v31

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lnq;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;II)V

    move-object/from16 v1, v70

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_74
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    if-eqz p0, :cond_0

    const-string v0, "CoreTextFieldRootBox"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v3, p0

    const p0, 0x795d8dec

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p3, p4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    :goto_1
    or-int/2addr p3, v0

    and-int/lit16 v0, p3, 0x93

    const/16 v1, 0x92

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    and-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget-wide v4, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p0, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v5, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 p3, p3, 0x3

    and-int/lit8 p3, p3, 0x7e

    invoke-static {p1, p2, p0, p3}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->a(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lu;

    const/16 v2, 0x19

    move-object v4, p1

    move-object v5, p2

    move v1, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 12

    const v0, 0x25552d88

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    and-int/lit8 v2, v0, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p1, :cond_c

    const v2, 0x5b336eec

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v4, :cond_4

    iget-object v8, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v8, :cond_3

    iget-boolean v8, v8, Landroidx/compose/foundation/text/LegacyTextFieldState;->p:Z

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    if-nez v8, :cond_4

    move-object v7, v4

    :cond_4
    if-nez v7, :cond_5

    const v0, 0x5b336eeb

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    iget-wide v8, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    move-result v2

    if-nez v2, :cond_8

    const v2, 0x7dc11ac6

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v4

    iget-wide v8, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    shr-long v3, v8, v3

    long-to-int v3, v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v4

    iget-wide v8, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-int v4, v8

    invoke-interface {v3, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v3

    invoke-virtual {v7, v2}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v2

    sub-int/2addr v3, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v4, :cond_6

    iget-object v4, v4, Landroidx/compose/foundation/text/LegacyTextFieldState;->m:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v6, :cond_6

    const v4, 0x7dc77b9a

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shl-int/lit8 v4, v0, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    invoke-static {v6, v2, p0, p2, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_6
    const v2, 0x7dcb87ae

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v2, :cond_7

    iget-object v2, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->n:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v6, :cond_7

    const v2, 0x7dcccf7b

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    invoke-static {v5, v3, p0, p2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->a(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_7
    const v0, 0x7dd0d7ce    # 3.4699993E37f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_5
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_8
    const v0, 0x7dd12d0e

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_6
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v0, :cond_b

    iget-object v2, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->l:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->v:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u()V

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p()V

    :cond_b
    :goto_7
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_c
    const v0, 0x768ee72a

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p()V

    goto :goto_9

    :cond_d
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, Lz3;

    invoke-direct {v0, p0, p3, v1, p1}, Lz3;-><init>(Ljava/lang/Object;IIZ)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const v0, -0x5597ad88

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    or-int/2addr p1, p2

    and-int/lit8 v1, p1, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/2addr p1, v2

    invoke-virtual {v5, p1, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->o:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v2, :cond_b

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b

    const p1, -0x7de7ecc8

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/Density;

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v4

    iget-wide v8, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    sget-object v4, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    const/16 v4, 0x20

    shr-long/2addr v8, v4

    long-to-int v6, v8

    invoke-interface {v3, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result v3

    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v8, v6, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v3, v7, v8}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v3

    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    iget v6, v3, Landroidx/compose/ui/geometry/Rect;->a:F

    sget v8, Landroidx/compose/foundation/text/TextFieldCursor_androidKt;->a:F

    invoke-interface {p1, v8}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr p1, v8

    add-float/2addr p1, v6

    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->d:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v8, p1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v10, p1

    shl-long v3, v8, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v3, v8

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result p1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez p1, :cond_5

    if-ne v6, v2, :cond_6

    :cond_5
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;

    invoke-direct {v6, v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;-><init>(J)V

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Landroidx/compose/foundation/text/selection/OffsetProvider;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "TextFieldCursorHandle"

    invoke-direct {p1, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_7

    if-ne v9, v2, :cond_8

    :cond_7
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    invoke-direct {v9, v1, p0}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {p1, v1, v9}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v1

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_9

    if-ne v8, v2, :cond_a

    :cond_9
    new-instance v8, Lr5;

    invoke-direct {v8, v3, v4, v0}, Lr5;-><init>(JI)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v1, v6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_b
    const p1, -0x7dd3f3f6

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_d

    new-instance v0, Lc;

    const/16 v1, 0x12

    invoke-direct {v0, p0, p2, v1}, Lc;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final e(Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    iget-object v4, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Llq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Landroidx/compose/ui/text/input/EditProcessor;->a:Landroidx/compose/ui/text/input/TextFieldValue;

    const-wide/16 v5, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v1, v5, v6, v3}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    invoke-virtual {v4, v2}, Llq;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    iget-object v3, v2, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v2, Landroidx/compose/ui/text/input/TextInputService;->a:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    return-void
.end method

.method public static final f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 11

    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v8, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_2

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_3

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_3
    :try_start_3
    sget-object v4, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    iget-object v5, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    iget-object v6, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p1

    move-object v10, p2

    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->b(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0
.end method
