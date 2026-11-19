.class public abstract Landroidx/compose/material3/OutlinedTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Landroidx/compose/material3/OutlinedTextFieldKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;I)V
    .locals 56

    move-object/from16 v0, p2

    move/from16 v3, p8

    move-object/from16 v4, p16

    move/from16 v1, p18

    if-eqz v0, :cond_0

    const-string v2, "OutlinedTextField"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x7a9fbaf5

    move-object/from16 v5, p17

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v5, v1, 0x6

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v6, v1

    :goto_1
    and-int/lit8 v7, v1, 0x30

    if-nez v7, :cond_4

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    goto :goto_3

    :cond_4
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v8, v1, 0x180

    const/16 v9, 0x80

    const/16 v10, 0x100

    if-nez v8, :cond_6

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v10

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    or-int/2addr v6, v8

    :cond_6
    or-int/lit16 v8, v6, 0x6c00

    const/high16 v11, 0x30000

    and-int/2addr v11, v1

    if-nez v11, :cond_7

    const v8, 0x16c00

    or-int/2addr v8, v6

    :cond_7
    const/high16 v6, 0x180000

    and-int/2addr v6, v1

    if-nez v6, :cond_9

    move-object/from16 v6, p5

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x100000

    goto :goto_5

    :cond_8
    const/high16 v11, 0x80000

    :goto_5
    or-int/2addr v8, v11

    goto :goto_6

    :cond_9
    move-object/from16 v6, p5

    :goto_6
    const/high16 v11, 0xc00000

    and-int/2addr v11, v1

    if-nez v11, :cond_b

    move-object/from16 v11, p6

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x800000

    goto :goto_7

    :cond_a
    const/high16 v12, 0x400000

    :goto_7
    or-int/2addr v8, v12

    goto :goto_8

    :cond_b
    move-object/from16 v11, p6

    :goto_8
    const/high16 v12, 0x36000000

    or-int/2addr v8, v12

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x800

    goto :goto_9

    :cond_c
    const/16 v12, 0x400

    :goto_9
    const v13, 0xc301b6

    or-int/2addr v12, v13

    move-object/from16 v14, p9

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_a

    :cond_d
    const/16 v13, 0x2000

    :goto_a
    or-int/2addr v12, v13

    const/high16 v13, 0x32180000

    or-int/2addr v12, v13

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    move v9, v10

    :cond_e
    const/16 v10, 0x16

    or-int/2addr v9, v10

    const v10, 0x12492493

    and-int v13, v8, v10

    const v15, 0x12492492

    move/from16 p2, v10

    const/16 v16, 0x1

    if-ne v13, v15, :cond_10

    and-int v12, v12, p2

    if-ne v12, v15, :cond_10

    and-int/lit16 v9, v9, 0x93

    const/16 v12, 0x92

    if-eq v9, v12, :cond_f

    goto :goto_b

    :cond_f
    const/4 v9, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move/from16 v9, v16

    :goto_c
    and-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_12

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v16, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p11

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v18, p15

    goto :goto_f

    :cond_12
    :goto_d
    sget-object v8, Landroidx/compose/material3/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/TextStyle;

    sget-object v9, Landroidx/compose/foundation/text/KeyboardActions;->g:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/foundation/text/KeyboardActions;->h:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz p12, :cond_13

    move/from16 v12, v16

    goto :goto_e

    :cond_13
    const v12, 0x7fffffff

    :goto_e
    sget-object v13, Landroidx/compose/material3/OutlinedTextFieldDefaults;->a:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v13, Landroidx/compose/material3/tokens/OutlinedTextFieldTokens;->b:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v13, v2}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v13

    move-object/from16 v18, v13

    move/from16 v13, v16

    :goto_f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v15, -0x1defba1a

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v15, v10, :cond_14

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v15, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v10, 0x519d82ef

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v19

    const-wide/16 v21, 0x10

    cmp-long v10, v19, v21

    if-eqz v10, :cond_15

    move-object/from16 v17, v0

    :goto_10
    move-wide/from16 v22, v19

    const/4 v10, 0x0

    goto :goto_12

    :cond_15
    const/4 v10, 0x0

    invoke-static {v15, v2, v10}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v16, :cond_16

    move-object/from16 v17, v0

    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->c:J

    :goto_11
    move-wide/from16 v19, v0

    goto :goto_10

    :cond_16
    move-object/from16 v17, v0

    if-eqz v3, :cond_17

    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->d:J

    goto :goto_11

    :cond_17
    if-eqz v10, :cond_18

    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->a:J

    goto :goto_11

    :cond_18
    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->b:J

    goto :goto_11

    :goto_12
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v21, Landroidx/compose/ui/text/TextStyle;

    const v51, 0xfffffe

    const/16 v52, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-direct/range {v21 .. v52}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroidx/compose/ui/text/TextStyle;->d(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v10, v4, Landroidx/compose/material3/TextFieldColors;->k:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    move-object v10, v8

    move-object v8, v0

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$5;

    move-object/from16 v54, v1

    move-object/from16 v53, v2

    move-object v2, v6

    move-object v6, v7

    move-object/from16 v19, v10

    move/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v17, p7

    move-object v10, v9

    move-object/from16 v16, v11

    move-object/from16 v9, p10

    move/from16 v11, p12

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$5;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V

    const v2, -0x7cd4204b

    move-object/from16 v3, v53

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v4, v54

    invoke-static {v4, v0, v3, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move v4, v7

    move v14, v12

    move v15, v13

    move-object/from16 v16, v18

    move-object/from16 v5, v19

    move-object v12, v10

    goto :goto_13

    :cond_19
    move-object v1, v0

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v12, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    :goto_13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1a

    move-object v2, v0

    new-instance v0, Lo80;

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v17, p16

    move/from16 v18, p18

    move-object v3, v1

    move-object/from16 v55, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v18}, Lo80;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;I)V

    move-object/from16 v2, v55

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v1, p12

    move-object/from16 v9, p13

    move-object/from16 v14, p14

    move/from16 v10, p16

    move/from16 v12, p17

    const-string v13, "OutlinedTextFieldLayout"

    if-eqz v0, :cond_0

    invoke-static {v0, v13}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v15, 0x2cec89be

    move-object/from16 v16, v13

    move-object/from16 v13, p15

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    iget-object v15, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v17, v10, 0x6

    move-object/from16 p0, v15

    if-nez v17, :cond_2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x4

    goto :goto_0

    :cond_1
    const/16 v17, 0x2

    :goto_0
    or-int v17, v10, v17

    goto :goto_1

    :cond_2
    move/from16 v17, v10

    :goto_1
    and-int/lit8 v18, v10, 0x30

    const/16 v19, 0x10

    if-nez v18, :cond_4

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x20

    goto :goto_2

    :cond_3
    move/from16 v18, v19

    :goto_2
    or-int v17, v17, v18

    :cond_4
    and-int/lit16 v15, v10, 0x180

    const/16 v21, 0x80

    const/16 v22, 0x100

    if-nez v15, :cond_6

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move/from16 v15, v22

    goto :goto_3

    :cond_5
    move/from16 v15, v21

    :goto_3
    or-int v17, v17, v15

    :cond_6
    and-int/lit16 v15, v10, 0xc00

    const/16 v23, 0x400

    const/16 v24, 0x800

    if-nez v15, :cond_8

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v15, v24

    goto :goto_4

    :cond_7
    move/from16 v15, v23

    :goto_4
    or-int v17, v17, v15

    :cond_8
    and-int/lit16 v15, v10, 0x6000

    const/16 v25, 0x2000

    if-nez v15, :cond_a

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0x4000

    goto :goto_5

    :cond_9
    move/from16 v15, v25

    :goto_5
    or-int v17, v17, v15

    :cond_a
    const/high16 v15, 0x30000

    and-int v15, p16, v15

    if-nez v15, :cond_c

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/high16 v15, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v15, 0x10000

    :goto_6
    or-int v17, v17, v15

    :cond_c
    const/high16 v15, 0x180000

    and-int v15, p16, v15

    if-nez v15, :cond_e

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v15, 0x80000

    :goto_7
    or-int v17, v17, v15

    :cond_e
    const/high16 v15, 0xc00000

    and-int v15, p16, v15

    if-nez v15, :cond_10

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x800000

    goto :goto_8

    :cond_f
    const/high16 v15, 0x400000

    :goto_8
    or-int v17, v17, v15

    :cond_10
    const/high16 v15, 0x6000000

    and-int v15, p16, v15

    if-nez v15, :cond_12

    move/from16 v15, p8

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v27

    if-eqz v27, :cond_11

    const/high16 v27, 0x4000000

    goto :goto_9

    :cond_11
    const/high16 v27, 0x2000000

    :goto_9
    or-int v17, v17, v27

    goto :goto_a

    :cond_12
    move/from16 v15, p8

    :goto_a
    const/high16 v27, 0x30000000

    and-int v27, p16, v27

    move-object/from16 v10, p9

    if-nez v27, :cond_14

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v29, 0x10000000

    :goto_b
    or-int v17, v17, v29

    :cond_14
    and-int/lit8 v29, v12, 0x6

    if-nez v29, :cond_17

    and-int/lit8 v29, v12, 0x8

    if-nez v29, :cond_15

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v29

    goto :goto_c

    :cond_15
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    :goto_c
    if-eqz v29, :cond_16

    const/16 v29, 0x4

    goto :goto_d

    :cond_16
    const/16 v29, 0x2

    :goto_d
    or-int v29, v12, v29

    goto :goto_e

    :cond_17
    move/from16 v29, v12

    :goto_e
    and-int/lit8 v30, v12, 0x30

    move-object/from16 v10, p11

    if-nez v30, :cond_19

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    const/16 v19, 0x20

    :cond_18
    or-int v29, v29, v19

    :cond_19
    and-int/lit16 v10, v12, 0x180

    if-nez v10, :cond_1b

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move/from16 v21, v22

    :cond_1a
    or-int v29, v29, v21

    :cond_1b
    and-int/lit16 v10, v12, 0xc00

    if-nez v10, :cond_1d

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    move/from16 v23, v24

    :cond_1c
    or-int v29, v29, v23

    :cond_1d
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_1f

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/16 v25, 0x4000

    :cond_1e
    or-int v29, v29, v25

    :cond_1f
    move/from16 v10, v29

    const v19, 0x12492493

    and-int v9, v17, v19

    const v12, 0x12492492

    if-ne v9, v12, :cond_21

    and-int/lit16 v9, v10, 0x2493

    const/16 v12, 0x2492

    if-eq v9, v12, :cond_20

    goto :goto_f

    :cond_20
    const/4 v9, 0x0

    goto :goto_10

    :cond_21
    :goto_f
    const/4 v9, 0x1

    :goto_10
    and-int/lit8 v12, v17, 0x1

    invoke-virtual {v13, v12, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_5a

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v13}, Landroidx/compose/material3/internal/TextFieldImplKt;->f(Landroidx/compose/runtime/Composer;)F

    move-result v15

    and-int/lit8 v9, v10, 0x70

    const/16 v12, 0x20

    if-ne v9, v12, :cond_22

    const/4 v9, 0x1

    goto :goto_11

    :cond_22
    const/4 v9, 0x0

    :goto_11
    const/high16 v12, 0xe000000

    and-int v12, v17, v12

    const/high16 v4, 0x4000000

    if-ne v12, v4, :cond_23

    const/4 v4, 0x1

    goto :goto_12

    :cond_23
    const/4 v4, 0x0

    :goto_12
    or-int/2addr v4, v9

    const/high16 v9, 0x70000000

    and-int v9, v17, v9

    const/high16 v12, 0x20000000

    if-ne v9, v12, :cond_24

    const/4 v9, 0x1

    goto :goto_13

    :cond_24
    const/4 v9, 0x0

    :goto_13
    or-int/2addr v4, v9

    and-int/lit8 v9, v10, 0xe

    const/4 v12, 0x4

    if-eq v9, v12, :cond_26

    and-int/lit8 v21, v10, 0x8

    if-eqz v21, :cond_25

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    goto :goto_14

    :cond_25
    const/16 v21, 0x0

    goto :goto_15

    :cond_26
    :goto_14
    const/16 v21, 0x1

    :goto_15
    or-int v4, v4, v21

    const v21, 0xe000

    and-int v12, v10, v21

    move/from16 v21, v4

    const/16 v4, 0x4000

    if-ne v12, v4, :cond_27

    const/4 v4, 0x1

    goto :goto_16

    :cond_27
    const/4 v4, 0x0

    :goto_16
    or-int v4, v21, v4

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v12

    or-int/2addr v4, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move/from16 v21, v4

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v21, :cond_28

    if-ne v12, v4, :cond_29

    :cond_28
    move v12, v9

    goto :goto_17

    :cond_29
    move-object/from16 v20, p0

    move-object/from16 p0, v4

    move/from16 v31, v9

    move/from16 v29, v10

    move-object v4, v13

    move-object/from16 v2, v16

    goto :goto_18

    :goto_17
    new-instance v9, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    move-object/from16 v21, v16

    const/16 v16, 0x0

    move-object/from16 v20, p0

    move-object/from16 p0, v4

    move/from16 v29, v10

    move/from16 v31, v12

    move-object v4, v13

    move-object/from16 v2, v21

    move-object/from16 v12, p9

    move-object/from16 v10, p11

    move-object v13, v11

    move/from16 v11, p8

    invoke-direct/range {v9 .. v16}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/foundation/layout/PaddingValues;FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v12, v9

    :goto_18
    check-cast v12, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v10

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    move/from16 p15, v15

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v20, :cond_59

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    const/16 v22, 0x0

    iget-boolean v11, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_2a

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_2a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v12, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v13, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_2b

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2b
    invoke-static {v10, v4, v10, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_2c
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v15, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v8, v29, 0x6

    and-int/lit8 v8, v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_31

    const v8, 0x7fe3b06d

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v10, "Leading"

    invoke-static {v8, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v10, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v8, v10}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v10, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v15

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v4, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v20, :cond_30

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_2d

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_2d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1a
    invoke-static {v4, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_2e

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_2e
    invoke-static {v15, v4, v15, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_2f
    invoke-static {v4, v8, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0xc

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_30
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_31
    const/4 v15, 0x0

    const v1, 0x7fe7716d

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    if-eqz v6, :cond_36

    const v1, 0x7fe8184b

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v7, "Trailing"

    invoke-static {v1, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/material3/MinimumInteractiveModifier;->b:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v1, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v20, :cond_35

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_32

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    :cond_32
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1c
    invoke-static {v4, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v10, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_33

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    :cond_33
    invoke-static {v8, v4, v8, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_34
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0xf

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_35
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_36
    const/4 v15, 0x0

    const v1, 0x7febe0cd

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    const/4 v8, 0x0

    if-eqz v5, :cond_37

    sub-float v1, v1, p15

    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    cmpg-float v9, v1, v8

    if-gez v9, :cond_37

    move v1, v8

    :cond_37
    move/from16 v24, v1

    if-eqz v6, :cond_38

    sub-float v7, v7, p15

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    cmpg-float v1, v7, v8

    if-gez v1, :cond_38

    move v7, v8

    :cond_38
    move/from16 v35, v7

    const/4 v1, 0x3

    if-eqz p6, :cond_3d

    const v7, 0x7ff69eb8

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v9, "Prefix"

    invoke-static {v7, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget v9, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    const/4 v10, 0x2

    invoke-static {v7, v9, v8, v10}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object/from16 v9, v22

    invoke-static {v7, v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v23

    sget v26, Landroidx/compose/material3/internal/TextFieldImplKt;->e:F

    const/16 v27, 0x0

    const/16 v28, 0xa

    const/16 v25, 0x0

    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v9, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v10

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v4, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v20, :cond_3c

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v1, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_39

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1e

    :cond_39
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1e
    invoke-static {v4, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v15, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v1, :cond_3a

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_3a
    invoke-static {v10, v4, v10, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_3b
    invoke-static {v4, v7, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x12

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v7, p6

    invoke-interface {v7, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :cond_3c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v22, 0x0

    throw v22

    :cond_3d
    move-object/from16 v7, p6

    const/4 v15, 0x0

    const v1, 0x7ffb9ecd

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    if-eqz p7, :cond_42

    const v1, 0x7ffc47ba

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v9, "Suffix"

    invoke-static {v1, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v9, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    const/4 v10, 0x2

    invoke-static {v1, v9, v8, v10}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v1, v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v32

    sget v33, Landroidx/compose/material3/internal/TextFieldImplKt;->e:F

    const/16 v36, 0x0

    const/16 v37, 0xa

    const/16 v34, 0x0

    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v15, 0x0

    invoke-static {v9, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v10

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v20, :cond_41

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_3e

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    :cond_3e
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_20
    invoke-static {v4, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v15, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v8, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v8, :cond_3f

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    :cond_3f
    invoke-static {v10, v4, v10, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_40
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x15

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v8, p7

    invoke-interface {v8, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v9, 0x0

    goto :goto_21

    :cond_41
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v9, 0x0

    throw v9

    :cond_42
    move-object/from16 v8, p7

    const/4 v9, 0x0

    const/4 v15, 0x0

    const v1, -0x7ffebfb3

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v10, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    const/4 v5, 0x0

    const/4 v15, 0x2

    invoke-static {v1, v10, v5, v15}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v5, 0x3

    invoke-static {v1, v9, v5}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v36

    if-nez v7, :cond_43

    move/from16 v37, v24

    goto :goto_22

    :cond_43
    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v37, 0x0

    :goto_22
    if-nez v8, :cond_44

    move/from16 v39, v35

    goto :goto_23

    :cond_44
    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v39, 0x0

    :goto_23
    const/16 v40, 0x0

    const/16 v41, 0xa

    const/16 v38, 0x0

    invoke-static/range {v36 .. v41}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz p2, :cond_45

    const v5, -0x7ff91a72

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v9, "Hint"

    invoke-static {v5, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    shr-int/lit8 v9, v17, 0x3

    and-int/lit8 v9, v9, 0x70

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-interface {v10, v5, v4, v9}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_24

    :cond_45
    move-object/from16 v10, p2

    const/4 v15, 0x0

    const v5, -0x7ff7b5d3

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_24
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v9, "TextField"

    invoke-static {v5, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v5, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x1

    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v9

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v20, :cond_58

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_46

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_25

    :cond_46
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_25
    invoke-static {v4, v15, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v6, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v6, :cond_47

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    :cond_47
    invoke-static {v9, v4, v9, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_48
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, p1

    invoke-interface {v6, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_52

    const v7, -0x7fedc0ae

    invoke-static {v4, v7, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v7

    move/from16 v9, v31

    const/4 v15, 0x4

    if-eq v9, v15, :cond_4b

    and-int/lit8 v9, v29, 0x8

    if-eqz v9, :cond_49

    move-object/from16 v9, p10

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4a

    goto :goto_26

    :cond_49
    move-object/from16 v9, p10

    :cond_4a
    const/4 v15, 0x0

    goto :goto_27

    :cond_4b
    move-object/from16 v9, p10

    :goto_26
    const/4 v15, 0x1

    :goto_27
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v15, :cond_4c

    move-object/from16 v15, p0

    if-ne v6, v15, :cond_4d

    :cond_4c
    new-instance v6, Lbk0;

    const/4 v15, 0x0

    invoke-direct {v6, v9, v15}, Lbk0;-><init>(Landroidx/compose/material3/internal/FloatProducer;I)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    check-cast v6, Lkotlin/jvm/functions/Function0;

    new-instance v15, Lkv0;

    const/4 v8, 0x5

    invoke-direct {v15, v6, v8}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v7, v15}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-string v7, "Label"

    invoke-static {v6, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v6, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v20, :cond_51

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_4e

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_28

    :cond_4e
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_28
    invoke-static {v4, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v6, :cond_4f

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    :cond_4f
    invoke-static {v7, v4, v7, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_50
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v1, v17, 0x9

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, p3

    invoke-interface {v6, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_29
    move-object/from16 v1, p13

    goto :goto_2a

    :cond_51
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v22, 0x0

    throw v22

    :cond_52
    move-object/from16 v6, p3

    move-object/from16 v9, p10

    const/4 v15, 0x0

    const v1, -0x7fe7b9d3

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_29

    :goto_2a
    if-eqz v1, :cond_57

    const v7, -0x7fe6fc50

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v2, "Supporting"

    invoke-static {v7, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget v7, Landroidx/compose/material3/internal/TextFieldImplKt;->h:F

    const/4 v8, 0x0

    const/4 v15, 0x2

    invoke-static {v2, v7, v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v2, v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget v7, Landroidx/compose/material3/TextFieldDefaults;->a:I

    invoke-static {}, Landroidx/compose/material3/TextFieldDefaults;->a()Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v15, 0x0

    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v4, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v20, :cond_56

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_53

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2b

    :cond_53
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2b
    invoke-static {v4, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v0, :cond_54

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_54
    invoke-static {v7, v4, v7, v13}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_55
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v29, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2c

    :cond_56
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v22, 0x0

    throw v22

    :cond_57
    const/4 v0, 0x1

    const/4 v15, 0x0

    const v2, -0x7fe1de33

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2c
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2d

    :cond_58
    const/16 v22, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_59
    const/16 v22, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_5a
    move-object/from16 v6, p3

    move-object/from16 v1, p13

    move-object/from16 v16, v0

    move-object v10, v3

    move-object v9, v11

    move-object v4, v13

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_5b

    move-object v2, v0

    new-instance v0, Lck0;

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, p17

    move-object/from16 v42, v2

    move-object v4, v6

    move-object v11, v9

    move-object v3, v10

    move-object v15, v14

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object v14, v1

    move-object/from16 v1, v16

    move/from16 v16, p16

    invoke-direct/range {v0 .. v17}, Lck0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V

    move-object/from16 v2, v42

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5b
    return-void
.end method
