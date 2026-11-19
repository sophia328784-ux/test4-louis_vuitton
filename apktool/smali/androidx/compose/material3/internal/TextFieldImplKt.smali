.class public abstract Landroidx/compose/material3/internal/TextFieldImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "showPlaceholder",
        "showPrefixSuffix",
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

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F

.field public static final g:F

.field public static final h:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->a:F

    const/high16 v1, 0x40800000    # 4.0f

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->b:F

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->c:F

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->e:F

    const/high16 v1, 0x41c00000    # 24.0f

    sput v1, Landroidx/compose/material3/internal/TextFieldImplKt;->f:F

    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->g:F

    sput v0, Landroidx/compose/material3/internal/TextFieldImplKt;->h:F

    return-void
.end method

.method public static final a(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 46

    move-object/from16 v9, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move/from16 v2, p15

    move/from16 v3, p16

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x20979528

    move-object/from16 v8, p14

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v8, v2, 0x6

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v2

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    and-int/lit8 v16, v2, 0x30

    const/16 v17, 0x10

    const/16 v18, 0x20

    move-object/from16 v4, p1

    if-nez v16, :cond_3

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move/from16 v16, v18

    goto :goto_2

    :cond_2
    move/from16 v16, v17

    :goto_2
    or-int v8, v8, v16

    :cond_3
    and-int/lit16 v4, v2, 0x180

    const/16 v16, 0x80

    const/16 v19, 0x100

    if-nez v4, :cond_5

    move-object/from16 v4, p2

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move/from16 v20, v19

    goto :goto_3

    :cond_4
    move/from16 v20, v16

    :goto_3
    or-int v8, v8, v20

    goto :goto_4

    :cond_5
    move-object/from16 v4, p2

    :goto_4
    and-int/lit16 v4, v2, 0xc00

    const/16 v20, 0x400

    move/from16 v21, v4

    if-nez v21, :cond_7

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x800

    goto :goto_5

    :cond_6
    move/from16 v21, v20

    :goto_5
    or-int v8, v8, v21

    :cond_7
    and-int/lit16 v4, v2, 0x6000

    const/16 v21, 0x2000

    const/16 v22, 0x4000

    if-nez v4, :cond_9

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v4, v22

    goto :goto_6

    :cond_8
    move/from16 v4, v21

    :goto_6
    or-int/2addr v8, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int v23, v2, v4

    const/high16 v24, 0x10000

    const/high16 v25, 0x20000

    if-nez v23, :cond_b

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    move/from16 v23, v25

    goto :goto_7

    :cond_a
    move/from16 v23, v24

    :goto_7
    or-int v8, v8, v23

    :cond_b
    const/high16 v23, 0x180000

    and-int v26, v2, v23

    const/high16 v27, 0x80000

    const/high16 v28, 0x100000

    move/from16 v29, v4

    const/4 v4, 0x0

    if-nez v26, :cond_d

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    move/from16 v26, v28

    goto :goto_8

    :cond_c
    move/from16 v26, v27

    :goto_8
    or-int v8, v8, v26

    :cond_d
    const/high16 v26, 0xc00000

    and-int v30, v2, v26

    const/high16 v31, 0x400000

    const/high16 v32, 0x800000

    if-nez v30, :cond_f

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    move/from16 v30, v32

    goto :goto_9

    :cond_e
    move/from16 v30, v31

    :goto_9
    or-int v8, v8, v30

    :cond_f
    const/high16 v30, 0x6000000

    and-int v30, v2, v30

    if-nez v30, :cond_11

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    const/high16 v30, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v30, 0x2000000

    :goto_a
    or-int v8, v8, v30

    :cond_11
    const/high16 v30, 0x30000000

    and-int v30, v2, v30

    if-nez v30, :cond_13

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/high16 v4, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v4, 0x10000000

    :goto_b
    or-int/2addr v8, v4

    :cond_13
    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_15

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x4

    goto :goto_c

    :cond_14
    const/4 v4, 0x2

    :goto_c
    or-int/2addr v4, v3

    goto :goto_d

    :cond_15
    move v4, v3

    :goto_d
    and-int/lit8 v30, v3, 0x30

    move/from16 v10, p7

    if-nez v30, :cond_17

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v30

    if-eqz v30, :cond_16

    move/from16 v17, v18

    :cond_16
    or-int v4, v4, v17

    :cond_17
    and-int/lit16 v2, v3, 0x180

    if-nez v2, :cond_19

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_18

    move/from16 v16, v19

    :cond_18
    or-int v4, v4, v16

    :cond_19
    and-int/lit16 v2, v3, 0xc00

    if-nez v2, :cond_1b

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v20, 0x800

    :cond_1a
    or-int v4, v4, v20

    :cond_1b
    and-int/lit16 v2, v3, 0x6000

    if-nez v2, :cond_1d

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move/from16 v21, v22

    :cond_1c
    or-int v4, v4, v21

    :cond_1d
    and-int v2, v3, v29

    if-nez v2, :cond_1f

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move/from16 v24, v25

    :cond_1e
    or-int v4, v4, v24

    :cond_1f
    and-int v2, v3, v23

    if-nez v2, :cond_21

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move/from16 v27, v28

    :cond_20
    or-int v4, v4, v27

    :cond_21
    and-int v2, v3, v26

    if-nez v2, :cond_23

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move/from16 v31, v32

    :cond_22
    or-int v4, v4, v31

    :cond_23
    move/from16 v24, v4

    const v2, 0x12492493

    and-int/2addr v2, v8

    const v4, 0x12492492

    if-ne v2, v4, :cond_25

    const v2, 0x492493

    and-int v2, v24, v2

    const v4, 0x492492

    if-eq v2, v4, :cond_24

    goto :goto_e

    :cond_24
    const/4 v2, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v2, 0x1

    :goto_f
    and-int/lit8 v4, v8, 0x1

    invoke-virtual {v7, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v2, v24, 0xc

    and-int/lit8 v2, v2, 0xe

    invoke-static {v14, v7, v2}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_26

    sget-object v2, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_10

    :cond_26
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_10

    :cond_27
    sget-object v2, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    :goto_10
    if-nez v12, :cond_28

    iget-wide v10, v0, Landroidx/compose/material3/TextFieldColors;->z:J

    goto :goto_11

    :cond_28
    if-eqz v13, :cond_29

    iget-wide v10, v0, Landroidx/compose/material3/TextFieldColors;->A:J

    goto :goto_11

    :cond_29
    if-eqz v25, :cond_2a

    iget-wide v10, v0, Landroidx/compose/material3/TextFieldColors;->x:J

    goto :goto_11

    :cond_2a
    iget-wide v10, v0, Landroidx/compose/material3/TextFieldColors;->y:J

    :goto_11
    invoke-static {v7}, Landroidx/compose/material3/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v4

    iget-object v1, v4, Landroidx/compose/material3/Typography;->j:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v4, Landroidx/compose/material3/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v0

    sget-object v16, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v28, v4

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v0

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v0

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v0

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    const/4 v5, 0x1

    goto :goto_12

    :cond_2d
    const/4 v5, 0x0

    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v0

    const-wide/16 v3, 0x10

    if-eqz v5, :cond_2f

    cmp-long v16, v0, v3

    if-eqz v16, :cond_2e

    goto :goto_13

    :cond_2e
    move-wide v0, v10

    :cond_2f
    :goto_13
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v16

    if-eqz v5, :cond_31

    cmp-long v3, v16, v3

    if-eqz v3, :cond_30

    goto :goto_14

    :cond_30
    move-wide v3, v10

    goto :goto_15

    :cond_31
    :goto_14
    move-wide/from16 v3, v16

    :goto_15
    move-wide/from16 v29, v0

    if-eqz p4, :cond_32

    iget-boolean v0, v9, Landroidx/compose/material3/TextFieldLabelPosition$Attached;->a:Z

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_16

    :cond_32
    const/4 v0, 0x0

    :goto_16
    const-string v1, "TextFieldInputState"

    const/16 v12, 0x30

    invoke-static {v2, v1, v7, v12}, Landroidx/compose/animation/core/TransitionKt;->f(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    move/from16 v31, v12

    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v12, v7}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v12

    move/from16 v32, v0

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;

    invoke-direct {v0, v12}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    sget-object v20, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v16, v1

    const v1, -0x559dce72

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v33, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->b:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v33, v12

    const/16 v34, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eq v12, v1, :cond_33

    const/4 v1, 0x2

    if-eq v12, v1, :cond_35

    const/4 v1, 0x3

    if-ne v12, v1, :cond_34

    :cond_33
    move/from16 v1, v35

    :goto_17
    const/4 v12, 0x0

    goto :goto_18

    :cond_34
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_35
    if-eqz v32, :cond_33

    move/from16 v1, v34

    goto :goto_17

    :goto_18
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v18, v1

    const v1, -0x559dce72

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v33, v1

    const/4 v12, 0x1

    if-eq v1, v12, :cond_36

    const/4 v12, 0x2

    if-eq v1, v12, :cond_38

    const/4 v12, 0x3

    if-ne v1, v12, :cond_37

    :cond_36
    move/from16 v1, v35

    :goto_19
    const/4 v12, 0x0

    goto :goto_1a

    :cond_37
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_38
    if-eqz v32, :cond_36

    move/from16 v1, v34

    goto :goto_19

    :goto_1a
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    invoke-virtual {v0, v12, v7, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelProgress$1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const-string v21, "LabelProgress"

    const/high16 v23, 0x30000

    move-object/from16 v22, v7

    move-object/from16 v17, v18

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v38

    move-object/from16 v0, v22

    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v1, v0}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v7

    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v12, v0}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v12

    move-object/from16 v37, v2

    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;

    invoke-direct {v2, v7, v12}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/material3/internal/InputPhase;

    move-wide/from16 v39, v3

    const v3, -0x4128d333

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v33, v4

    const/4 v12, 0x1

    if-eq v4, v12, :cond_3b

    const/4 v12, 0x2

    if-eq v4, v12, :cond_3a

    const/4 v12, 0x3

    if-ne v4, v12, :cond_39

    :goto_1b
    move/from16 v4, v34

    :goto_1c
    const/4 v12, 0x0

    goto :goto_1d

    :cond_39
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3a
    if-eqz v32, :cond_3b

    goto :goto_1b

    :cond_3b
    move/from16 v4, v35

    goto :goto_1c

    :goto_1d
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v33, v3

    const/4 v12, 0x1

    if-eq v3, v12, :cond_3e

    const/4 v12, 0x2

    if-eq v3, v12, :cond_3d

    const/4 v12, 0x3

    if-ne v3, v12, :cond_3c

    :goto_1e
    move/from16 v3, v34

    :goto_1f
    const/4 v12, 0x0

    goto :goto_20

    :cond_3c
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3d
    if-eqz v32, :cond_3e

    goto :goto_1e

    :cond_3e
    move/from16 v3, v35

    goto :goto_1f

    :goto_20
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const-string v21, "PlaceholderOpacity"

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v12

    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;

    invoke-direct {v2, v7}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/internal/InputPhase;

    const v4, -0x4b028119

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v33, v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_3f

    const/4 v7, 0x2

    if-eq v3, v7, :cond_41

    const/4 v7, 0x3

    if-ne v3, v7, :cond_40

    :cond_3f
    move/from16 v3, v35

    :goto_21
    const/4 v7, 0x0

    goto :goto_22

    :cond_40
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_41
    if-eqz v32, :cond_3f

    move/from16 v3, v34

    goto :goto_21

    :goto_22
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v33, v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_45

    const/4 v7, 0x2

    if-eq v3, v7, :cond_44

    const/4 v4, 0x3

    if-ne v3, v4, :cond_43

    :cond_42
    :goto_23
    move/from16 v34, v35

    :goto_24
    const/4 v3, 0x0

    goto :goto_25

    :cond_43
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_44
    const/4 v4, 0x3

    if-eqz v32, :cond_42

    goto :goto_24

    :cond_45
    const/4 v4, 0x3

    const/4 v7, 0x2

    goto :goto_23

    :goto_25
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const-string v21, "PrefixSuffixOpacity"

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-static {v1, v2}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v1

    new-instance v3, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;

    invoke-direct {v3, v1}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/material3/internal/InputPhase;

    const v4, -0xc5f552

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v7, v33, v17

    const/4 v4, 0x1

    if-ne v7, v4, :cond_46

    move-wide/from16 v18, v29

    :goto_26
    const/4 v7, 0x0

    goto :goto_27

    :cond_46
    move-wide/from16 v18, v39

    goto :goto_26

    :goto_27
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v32, v0

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_47

    if-ne v0, v13, :cond_48

    :cond_47
    sget-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_48
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/internal/InputPhase;

    const v4, -0xc5f552

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v33, v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_49

    move v0, v8

    move-wide/from16 v7, v29

    :goto_28
    const/4 v4, 0x0

    goto :goto_29

    :cond_49
    move v0, v8

    move-wide/from16 v7, v39

    goto :goto_28

    :goto_29
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/internal/InputPhase;

    const v8, -0xc5f552

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v33, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4a

    move-wide/from16 v7, v29

    :goto_2a
    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_2b

    :cond_4a
    move-wide/from16 v7, v39

    goto :goto_2a

    :goto_2b
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v0, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v7

    invoke-virtual {v3, v7, v2, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const-string v21, "LabelTextStyleColor"

    move-object/from16 v18, v0

    move-object/from16 v22, v2

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v0

    new-instance v3, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;

    invoke-direct {v3, v1}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/internal/InputPhase;

    const v1, -0x1bb38f5d

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_4b

    if-ne v8, v13, :cond_4c

    :cond_4b
    sget-object v7, Landroidx/compose/animation/ColorVectorConverterKt;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4c
    move-object/from16 v20, v8

    check-cast v20, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v10, v11}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v1, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v1, v10, v11}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v7

    invoke-virtual {v3, v7, v2, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const-string v21, "LabelContentColor"

    move-object/from16 v18, v1

    move-object/from16 v22, v2

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    move-object/from16 v10, v22

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_4d

    new-instance v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    move-object v8, v1

    check-cast v8, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    if-nez p4, :cond_4e

    const v0, -0x70c16e39

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v11, v7

    move-object/from16 v1, v27

    move-object/from16 v6, v28

    move/from16 v43, v29

    move-object/from16 v44, v32

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_2c

    :cond_4e
    const/4 v7, 0x0

    const v1, -0x70c16e38

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v6, v0

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;

    move v11, v7

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v43, v29

    move-object/from16 v44, v32

    move-object/from16 v3, v38

    const/16 v16, 0x0

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V

    move-object v6, v2

    const v2, -0x402b4ec0

    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v7, v0

    :goto_2c
    if-nez p8, :cond_4f

    move-object/from16 v8, p12

    iget-wide v2, v8, Landroidx/compose/material3/TextFieldColors;->D:J

    goto :goto_2d

    :cond_4f
    move-object/from16 v8, p12

    if-eqz p9, :cond_50

    iget-wide v2, v8, Landroidx/compose/material3/TextFieldColors;->E:J

    goto :goto_2d

    :cond_50
    if-eqz v25, :cond_51

    iget-wide v2, v8, Landroidx/compose/material3/TextFieldColors;->B:J

    goto :goto_2d

    :cond_51
    iget-wide v2, v8, Landroidx/compose/material3/TextFieldColors;->C:J

    :goto_2d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_52

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v4, Llg0;

    const/4 v5, 0x3

    invoke-direct {v4, v12, v5}, Llg0;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-static {v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_52
    const/4 v5, 0x3

    :goto_2e
    check-cast v0, Landroidx/compose/runtime/State;

    if-eqz p5, :cond_53

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_53

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    const v0, -0x70b07c28

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;

    move-object v4, v1

    move/from16 v36, v5

    move-object v1, v12

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x53c6f2c5

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v2, v0

    goto :goto_2f

    :cond_53
    move/from16 v36, v5

    const v0, -0x70aa6c96

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, v16

    :goto_2f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_54

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->n()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v1, Llg0;

    move-object/from16 v3, v44

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Llg0;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_54
    check-cast v0, Landroidx/compose/runtime/State;

    const v0, -0x709f7ed6

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v0, -0x7096b376

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v0, -0x7094085f

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v0, -0x708fc380

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-nez p8, :cond_55

    iget-wide v0, v8, Landroidx/compose/material3/TextFieldColors;->H:J

    goto :goto_30

    :cond_55
    if-eqz p9, :cond_56

    iget-wide v0, v8, Landroidx/compose/material3/TextFieldColors;->I:J

    goto :goto_30

    :cond_56
    if-eqz v25, :cond_57

    iget-wide v0, v8, Landroidx/compose/material3/TextFieldColors;->F:J

    goto :goto_30

    :cond_57
    iget-wide v0, v8, Landroidx/compose/material3/TextFieldColors;->G:J

    :goto_30
    if-nez p6, :cond_58

    const v0, -0x708b48fc

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v4, p6

    move-object/from16 v12, v16

    goto :goto_31

    :cond_58
    const v3, -0x708b48fb

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1;

    move-object/from16 v4, p6

    invoke-direct {v3, v0, v1, v6, v4}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x31e62e50

    invoke-static {v0, v3, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v12, v0

    :goto_31
    sget-object v0, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->a:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/high16 p14, 0x70000000

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    const v0, -0x7075f34a

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_59

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/geometry/Size;

    const/high16 v1, 0xe000000

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_32

    :cond_59
    const/high16 v1, 0xe000000

    :goto_32
    check-cast v0, Landroidx/compose/runtime/MutableState;

    new-instance v3, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;

    move-object/from16 v4, p13

    invoke-direct {v3, v0, v9, v15, v4}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    move/from16 v17, v1

    const v1, 0x1f7a6892

    invoke-static {v1, v3, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v37, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$2;

    const-string v41, "getValue()Ljava/lang/Object;"

    const/16 v42, 0x0

    const-class v39, Landroidx/compose/runtime/State;

    const-string v40, "value"

    invoke-direct/range {v37 .. v42}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v37

    move-object/from16 v3, v38

    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;

    invoke-direct {v5, v11}, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;-><init>(Lkotlin/jvm/internal/PropertyReference0Impl;)V

    move-object/from16 v19, v1

    move/from16 v11, v43

    and-int/lit16 v1, v11, 0x1c00

    move-object/from16 v20, v2

    const/16 v2, 0x800

    if-ne v1, v2, :cond_5a

    const/16 v26, 0x1

    goto :goto_33

    :cond_5a
    const/16 v26, 0x0

    :goto_33
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int v1, v26, v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5b

    if-ne v2, v13, :cond_5c

    :cond_5b
    new-instance v2, Lcl0;

    const/16 v1, 0x12

    invoke-direct {v2, v9, v3, v0, v1}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v11, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    shl-int/lit8 v1, v24, 0x15

    and-int v1, v1, v17

    or-int/2addr v0, v1

    const/16 v18, 0x12

    shl-int/lit8 v1, v11, 0x12

    and-int v1, v1, p14

    or-int/2addr v0, v1

    const v1, 0xe000

    shr-int/lit8 v3, v24, 0x3

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v22, v10

    move-object v10, v5

    move-object/from16 v5, v16

    move-object/from16 v4, v16

    move/from16 v16, v0

    move-object v0, v6

    move-object v6, v4

    move-object v3, v7

    move-object v7, v4

    move/from16 v8, p7

    move/from16 v17, v1

    move-object v11, v2

    move-object v13, v12

    move-object v14, v15

    move-object/from16 v12, v19

    move-object/from16 v2, v20

    move-object/from16 v15, v22

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/OutlinedTextFieldKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_34

    :cond_5d
    move-object v0, v10

    move v1, v11

    const v2, 0x1d670ac8

    invoke-static {v0, v2, v1}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_5e
    move-object/from16 v20, v2

    move-object v4, v6

    move-object v2, v7

    move-object v0, v10

    move v1, v11

    move-object/from16 v3, v38

    move/from16 v11, v43

    const/high16 v17, 0xe000000

    const v5, -0x708602aa

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v5, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$containerWithId$1;

    move-object/from16 v6, p13

    invoke-direct {v5, v6}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$containerWithId$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v7, -0x671b8a8b

    invoke-static {v7, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    new-instance v37, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1;

    const-string v41, "getValue()Ljava/lang/Object;"

    const/16 v42, 0x0

    const-class v39, Landroidx/compose/runtime/State;

    const-string v40, "value"

    invoke-direct/range {v37 .. v42}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v37

    new-instance v10, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;

    invoke-direct {v10, v3}, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;-><init>(Lkotlin/jvm/internal/PropertyReference0Impl;)V

    shr-int/lit8 v3, v11, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    shl-int/lit8 v7, v24, 0x15

    and-int v7, v7, v17

    or-int/2addr v3, v7

    const/16 v18, 0x12

    shl-int/lit8 v7, v11, 0x12

    and-int v7, v7, p14

    or-int v15, v3, v7

    shr-int/lit8 v3, v24, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x30

    move-object v11, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move/from16 v8, p7

    move-object/from16 v13, p11

    move-object v14, v0

    move-object v0, v4

    move-object/from16 v4, v16

    move/from16 v16, v3

    move-object/from16 v3, v20

    invoke-static/range {v0 .. v16}, Landroidx/compose/material3/TextFieldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    move-object v0, v14

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_34

    :cond_5f
    move-object v0, v7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_34
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_60

    move-object v1, v0

    new-instance v0, Ly21;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v45, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Ly21;-><init>(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v45

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_60
    return-void
.end method

.method public static final b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    move/from16 v5, p5

    const v0, 0x17a3cff9

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, p0, p1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v5

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, v5, 0x180

    if-nez v1, :cond_3

    invoke-virtual {v10, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v10, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v11, v0, 0x3fe

    move-wide v6, p0

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v6 .. v11}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->a(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v0, Lqq0;

    const/4 v6, 0x1

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lqq0;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final c(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1

    instance-of v0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    iget-object p0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Above;->a:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    iget-object p0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;->c:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0

    :cond_1
    const-string v0, "Unknown position: "

    invoke-static {p0, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Landroidx/compose/material3/TextFieldLabelPosition;)Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1

    instance-of v0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/material3/TextFieldLabelPosition$Above;

    iget-object p0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Above;->a:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    iget-object p0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;->b:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0

    :cond_1
    const-string v0, "Unknown position: "

    invoke-static {p0, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final e(Landroidx/compose/runtime/Composer;)F
    .locals 8

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Landroidx/compose/material3/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/material3/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-wide v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    sget-wide v2, Landroidx/compose/material3/tokens/TypeScaleTokens;->l:J

    const-wide v4, 0xff00000000L

    and-long/2addr v4, v0

    const-wide v6, 0x100000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/unit/FontScaling;->Z(J)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    return p0
.end method

.method public static final f(Landroidx/compose/runtime/Composer;)F
    .locals 2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->c:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    sget v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->d:F

    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    return v1

    :cond_1
    return p0
.end method
