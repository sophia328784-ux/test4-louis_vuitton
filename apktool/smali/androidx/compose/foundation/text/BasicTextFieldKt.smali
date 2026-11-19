.class public abstract Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\t\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00078\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "cursorHandleVisible",
        "",
        "startHandleState",
        "endHandleState",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "textFieldValueState",
        "",
        "lastTextValue",
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


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move/from16 v4, p8

    move/from16 v5, p17

    move/from16 v6, p18

    move/from16 v7, p19

    if-eqz v2, :cond_0

    const-string v8, "BasicTextField"

    invoke-static {v2, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    const v8, -0x39e1fa71

    move-object/from16 v9, p16

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v9, v5, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v5

    goto :goto_1

    :cond_2
    move v9, v5

    :goto_1
    and-int/lit8 v12, v5, 0x30

    if-nez v12, :cond_4

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v9, v12

    :cond_4
    and-int/lit16 v12, v5, 0x180

    const/16 v16, 0x100

    if-nez v12, :cond_6

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move/from16 v12, v16

    goto :goto_3

    :cond_5
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v9, v12

    :cond_6
    and-int/lit8 v12, v7, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v12, :cond_8

    or-int/lit16 v9, v9, 0xc00

    :cond_7
    move/from16 v10, p3

    goto :goto_5

    :cond_8
    and-int/lit16 v10, v5, 0xc00

    if-nez v10, :cond_7

    move/from16 v10, p3

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_9

    move/from16 v19, v18

    goto :goto_4

    :cond_9
    move/from16 v19, v17

    :goto_4
    or-int v9, v9, v19

    :goto_5
    and-int/lit16 v13, v5, 0x6000

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-nez v13, :cond_b

    move/from16 v13, p4

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v20

    goto :goto_6

    :cond_a
    move/from16 v21, v19

    :goto_6
    or-int v9, v9, v21

    goto :goto_7

    :cond_b
    move/from16 v13, p4

    :goto_7
    const/high16 v21, 0x30000

    and-int v22, v5, v21

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    move-object/from16 v15, p5

    if-nez v22, :cond_d

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    move/from16 v25, v24

    goto :goto_8

    :cond_c
    move/from16 v25, v23

    :goto_8
    or-int v9, v9, v25

    :cond_d
    const/high16 v25, 0x180000

    and-int v25, v5, v25

    if-nez v25, :cond_f

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    const/high16 v25, 0x100000

    goto :goto_9

    :cond_e
    const/high16 v25, 0x80000

    :goto_9
    or-int v9, v9, v25

    :cond_f
    const/high16 v25, 0xc00000

    and-int v25, v5, v25

    move-object/from16 v14, p7

    if-nez v25, :cond_11

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x800000

    goto :goto_a

    :cond_10
    const/high16 v26, 0x400000

    :goto_a
    or-int v9, v9, v26

    :cond_11
    const/high16 v26, 0x6000000

    and-int v26, v5, v26

    if-nez v26, :cond_13

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v26

    if-eqz v26, :cond_12

    const/high16 v26, 0x4000000

    goto :goto_b

    :cond_12
    const/high16 v26, 0x2000000

    :goto_b
    or-int v9, v9, v26

    :cond_13
    const/high16 v26, 0x30000000

    and-int v26, v5, v26

    move/from16 v11, p9

    if-nez v26, :cond_15

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v27

    if-eqz v27, :cond_14

    const/high16 v27, 0x20000000

    goto :goto_c

    :cond_14
    const/high16 v27, 0x10000000

    :goto_c
    or-int v9, v9, v27

    :cond_15
    and-int/lit8 v27, v6, 0x6

    if-nez v27, :cond_17

    move-object/from16 v27, v2

    move/from16 v2, p10

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v28

    if-eqz v28, :cond_16

    const/16 v28, 0x4

    goto :goto_d

    :cond_16
    const/16 v28, 0x2

    :goto_d
    or-int v28, v6, v28

    goto :goto_e

    :cond_17
    move-object/from16 v27, v2

    move/from16 v2, p10

    move/from16 v28, v6

    :goto_e
    and-int/lit8 v29, v6, 0x30

    move-object/from16 v2, p11

    if-nez v29, :cond_19

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    const/16 v29, 0x20

    goto :goto_f

    :cond_18
    const/16 v29, 0x10

    :goto_f
    or-int v28, v28, v29

    :cond_19
    move/from16 v2, v28

    and-int/lit16 v5, v7, 0x1000

    if-eqz v5, :cond_1b

    or-int/lit16 v2, v2, 0x180

    move/from16 v28, v2

    :cond_1a
    move-object/from16 v2, p12

    goto :goto_11

    :cond_1b
    move/from16 v28, v2

    and-int/lit16 v2, v6, 0x180

    if-nez v2, :cond_1a

    move-object/from16 v2, p12

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    goto :goto_10

    :cond_1c
    const/16 v16, 0x80

    :goto_10
    or-int v16, v28, v16

    move/from16 v28, v16

    :goto_11
    and-int/lit16 v2, v6, 0xc00

    if-nez v2, :cond_1e

    move-object/from16 v2, p13

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move/from16 v17, v18

    :cond_1d
    or-int v28, v28, v17

    :goto_12
    move/from16 v2, v28

    goto :goto_13

    :cond_1e
    move-object/from16 v2, p13

    goto :goto_12

    :goto_13
    move/from16 v16, v5

    and-int/lit16 v5, v7, 0x4000

    if-eqz v5, :cond_20

    or-int/lit16 v2, v2, 0x6000

    move/from16 v17, v2

    :cond_1f
    move-object/from16 v2, p14

    goto :goto_14

    :cond_20
    move/from16 v17, v2

    and-int/lit16 v2, v6, 0x6000

    if-nez v2, :cond_1f

    move-object/from16 v2, p14

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    move/from16 v19, v20

    :cond_21
    or-int v17, v17, v19

    :goto_14
    and-int v18, v6, v21

    move-object/from16 v2, p15

    if-nez v18, :cond_23

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    move/from16 v23, v24

    :cond_22
    or-int v17, v17, v23

    :cond_23
    const v18, 0x12492493

    and-int v2, v9, v18

    move/from16 v18, v5

    const v5, 0x12492492

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-ne v2, v5, :cond_25

    const v2, 0x12493

    and-int v2, v17, v2

    const v5, 0x12492

    if-eq v2, v5, :cond_24

    goto :goto_15

    :cond_24
    move/from16 v2, v19

    goto :goto_16

    :cond_25
    :goto_15
    move/from16 v2, v20

    :goto_16
    and-int/lit8 v5, v9, 0x1

    invoke-virtual {v8, v5, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v2, p17, 0x1

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_27

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_17

    :cond_26
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p12

    move-object/from16 v7, p14

    goto :goto_1a

    :cond_27
    :goto_17
    if-eqz v12, :cond_28

    move/from16 v10, v20

    :cond_28
    if-eqz v16, :cond_2a

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_29

    new-instance v2, Lu5;

    const/16 v12, 0x13

    invoke-direct {v2, v12}, Lu5;-><init>(I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v2, Lkotlin/jvm/functions/Function1;

    goto :goto_18

    :cond_2a
    move-object/from16 v2, p12

    :goto_18
    if-eqz v18, :cond_2b

    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v16, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->c:J

    move-object/from16 p2, v2

    const/4 v2, 0x0

    invoke-direct {v12, v6, v7, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_19

    :cond_2b
    move-object/from16 p2, v2

    move-object/from16 v12, p14

    :goto_19
    move-object/from16 v2, p2

    move-object v7, v12

    :goto_1a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/KeyboardOptions;->b(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v11

    xor-int/lit8 v6, v4, 0x1

    move v13, v10

    if-eqz v4, :cond_2c

    move/from16 v10, v20

    goto :goto_1b

    :cond_2c
    move/from16 v10, p10

    :goto_1b
    if-eqz v4, :cond_2d

    move/from16 v12, v20

    goto :goto_1c

    :cond_2d
    move/from16 v12, p9

    :goto_1c
    move-object/from16 p2, v2

    and-int/lit8 v2, v9, 0xe

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2e

    move/from16 v2, v20

    goto :goto_1d

    :cond_2e
    move/from16 v2, v19

    :goto_1d
    and-int/lit8 v3, v9, 0x70

    move/from16 p3, v2

    const/16 v2, 0x20

    if-ne v3, v2, :cond_2f

    move/from16 v19, v20

    :cond_2f
    or-int v2, p3, v19

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_30

    if-ne v3, v5, :cond_31

    :cond_30
    new-instance v3, Lk;

    const/16 v2, 0x9

    invoke-direct {v3, v0, v1, v2}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v3, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v2, v9, 0x38e

    shr-int/lit8 v5, v9, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v2, v5

    shl-int/lit8 v5, v17, 0x9

    const v16, 0xe000

    and-int v18, v5, v16

    or-int v2, v2, v18

    const/high16 v18, 0x70000

    and-int v19, v5, v18

    or-int v2, v2, v19

    const/high16 v19, 0x380000

    and-int v19, v5, v19

    or-int v2, v2, v19

    const/high16 v19, 0x1c00000

    and-int v5, v5, v19

    or-int/2addr v2, v5

    shr-int/lit8 v5, v9, 0xf

    and-int/lit16 v5, v5, 0x380

    and-int/lit16 v0, v9, 0x1c00

    or-int/2addr v0, v5

    and-int v5, v9, v16

    or-int/2addr v0, v5

    and-int v5, v17, v18

    or-int v18, v0, v5

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v4, p11

    move/from16 v17, v2

    move-object v1, v3

    move-object/from16 v16, v8

    move v9, v12

    move-object v12, v14

    move-object v3, v15

    move-object/from16 v2, v27

    move/from16 v14, p4

    move-object/from16 v15, p15

    move v8, v6

    move-object/from16 v6, p13

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v15, v7

    move v4, v13

    move-object v13, v5

    goto :goto_1e

    :cond_32
    move-object/from16 v16, v8

    move-object/from16 v2, v27

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move v4, v10

    :goto_1e
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_33

    move-object v1, v0

    new-instance v0, Lxc;

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v30, v1

    move-object v3, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Lxc;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v30

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method

.method public static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p5

    move/from16 v14, p14

    if-eqz v0, :cond_0

    const-string v2, "BasicTextField"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, 0x78d0d0fc

    move-object/from16 v2, p13

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v14, 0x6

    const/4 v11, 0x4

    if-nez v0, :cond_2

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

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

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

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

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v0, v2

    :cond_6
    or-int/lit16 v0, v0, 0x6c00

    const/high16 v13, 0x30000

    and-int v2, v14, v13

    move-object/from16 v15, p4

    if-nez v2, :cond_8

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x20000

    goto :goto_4

    :cond_7
    const/high16 v2, 0x10000

    :goto_4
    or-int/2addr v0, v2

    :cond_8
    const/high16 v2, 0x180000

    and-int/2addr v2, v14

    if-nez v2, :cond_a

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x100000

    goto :goto_5

    :cond_9
    const/high16 v2, 0x80000

    :goto_5
    or-int/2addr v0, v2

    :cond_a
    const/high16 v2, 0xc00000

    and-int/2addr v2, v14

    if-nez v2, :cond_c

    move-object/from16 v2, p6

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x800000

    goto :goto_6

    :cond_b
    const/high16 v3, 0x400000

    :goto_6
    or-int/2addr v0, v3

    goto :goto_7

    :cond_c
    move-object/from16 v2, p6

    :goto_7
    const/high16 v3, 0x6000000

    or-int/2addr v3, v0

    const/high16 v4, 0x30000000

    and-int/2addr v4, v14

    if-nez v4, :cond_d

    const/high16 v3, 0x16000000

    or-int/2addr v3, v0

    :cond_d
    const v0, 0x12492493

    and-int/2addr v0, v3

    const v4, 0x12492492

    const/16 v16, 0x1

    if-ne v0, v4, :cond_e

    const/4 v0, 0x0

    goto :goto_8

    :cond_e
    move/from16 v0, v16

    :goto_8
    and-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v14, 0x1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const v6, -0x70000001

    if-eqz v0, :cond_10

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v0, v3, v6

    move/from16 v28, p3

    move/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v22, p11

    move/from16 p2, v13

    :goto_9
    move v13, v0

    goto :goto_b

    :cond_10
    :goto_a
    and-int v0, v3, v6

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_11

    new-instance v3, Lu5;

    const/16 v6, 0x12

    invoke-direct {v3, v6}, Lu5;-><init>(I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v17, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p2, v13

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->c:J

    const/4 v5, 0x0

    invoke-direct {v6, v13, v14, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v5, 0x7fffffff

    sget-object v13, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lb21;

    move-object/from16 v20, v3

    move/from16 v24, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v13

    move/from16 v25, v16

    move/from16 v28, v25

    goto :goto_9

    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_12

    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v14, v4

    const/4 v4, 0x0

    move-object v12, v14

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_c

    :cond_12
    move-object v12, v4

    const/4 v14, 0x0

    :goto_c
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v2, v1}, Landroidx/compose/ui/text/input/TextFieldValue;->b(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_13

    if-ne v4, v12, :cond_14

    :cond_13
    new-instance v4, Luc;

    invoke-direct {v4, v2, v0, v14}, Luc;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v10}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v3, v13, 0xe

    if-ne v3, v11, :cond_15

    move/from16 v5, v16

    goto :goto_d

    :cond_15
    move v5, v14

    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v5, :cond_16

    if-ne v3, v12, :cond_17

    :cond_16
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8, v14}, Landroidx/compose/foundation/text/KeyboardOptions;->b(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v26

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit8 v5, v13, 0x70

    const/16 v6, 0x20

    if-ne v5, v6, :cond_18

    move/from16 v5, v16

    goto :goto_e

    :cond_18
    move v5, v14

    :goto_e
    or-int/2addr v4, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_19

    if-ne v5, v12, :cond_1a

    :cond_19
    new-instance v5, Lvc;

    invoke-direct {v5, v7, v0, v3, v14}, Lvc;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v0, v13, 0x380

    shr-int/lit8 v3, v13, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xdb6000

    or-int v32, v0, v3

    shr-int/lit8 v0, v13, 0xf

    and-int/lit16 v0, v0, 0x380

    and-int/lit16 v3, v13, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v13

    or-int/2addr v0, v3

    or-int v33, v0, p2

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v29, 0x0

    move-object/from16 v27, p6

    move-object/from16 v30, p12

    move-object/from16 v17, v9

    move-object/from16 v31, v10

    move-object/from16 v18, v15

    move-object v15, v2

    invoke-static/range {v15 .. v33}, Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v22

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v4, v28

    goto :goto_f

    :cond_1b
    move-object/from16 v17, v9

    move-object/from16 v31, v10

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v4, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    :goto_f
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1c

    new-instance v0, Lwc;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object v2, v7

    move-object/from16 v3, v17

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v14}, Lwc;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
