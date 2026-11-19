.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "value",
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc70;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lc70;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;III)V
    .locals 38

    move-object/from16 v0, p2

    move/from16 v1, p16

    move/from16 v2, p17

    move/from16 v3, p18

    if-eqz v0, :cond_0

    const-string v4, "LVTextField"

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x5077e6d8

    move-object/from16 v4, p15

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v1

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v8, v1

    :goto_1
    and-int/lit8 v9, v1, 0x30

    if-nez v9, :cond_4

    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v8, v12

    goto :goto_3

    :cond_4
    move-object/from16 v9, p1

    :goto_3
    and-int/lit16 v12, v1, 0x180

    if-nez v12, :cond_6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x100

    goto :goto_4

    :cond_5
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v8, v12

    :cond_6
    and-int/lit8 v12, v3, 0x8

    if-eqz v12, :cond_7

    or-int/lit16 v8, v8, 0xc00

    goto :goto_7

    :cond_7
    and-int/lit16 v15, v1, 0xc00

    if-nez v15, :cond_a

    if-nez p3, :cond_8

    const/4 v15, -0x1

    goto :goto_5

    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    :goto_5
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0x800

    goto :goto_6

    :cond_9
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v8, v15

    :cond_a
    :goto_7
    and-int/lit8 v15, v3, 0x10

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-eqz v15, :cond_c

    or-int/lit16 v8, v8, 0x6000

    :cond_b
    move/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v7, v1, 0x6000

    if-nez v7, :cond_b

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_d

    move/from16 v18, v17

    goto :goto_8

    :cond_d
    move/from16 v18, v16

    :goto_8
    or-int v8, v8, v18

    :goto_9
    const/high16 v18, 0x30000

    and-int v19, v1, v18

    move-object/from16 v10, p5

    if-nez v19, :cond_f

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_e
    const/high16 v19, 0x10000

    :goto_a
    or-int v8, v8, v19

    :cond_f
    and-int/lit8 v19, v3, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_10

    or-int v8, v8, v20

    move/from16 v11, p6

    goto :goto_c

    :cond_10
    and-int v20, v1, v20

    move/from16 v11, p6

    if-nez v20, :cond_12

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_11

    const/high16 v21, 0x100000

    goto :goto_b

    :cond_11
    const/high16 v21, 0x80000

    :goto_b
    or-int v8, v8, v21

    :cond_12
    :goto_c
    and-int/lit16 v13, v3, 0x80

    const/high16 v22, 0xc00000

    if-eqz v13, :cond_13

    or-int v8, v8, v22

    move-object/from16 v14, p7

    goto :goto_e

    :cond_13
    and-int v22, v1, v22

    move-object/from16 v14, p7

    if-nez v22, :cond_15

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x800000

    goto :goto_d

    :cond_14
    const/high16 v23, 0x400000

    :goto_d
    or-int v8, v8, v23

    :cond_15
    :goto_e
    const/high16 v23, 0x6000000

    or-int v23, v8, v23

    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_17

    const/high16 v23, 0x36000000

    or-int v23, v8, v23

    :cond_16
    move-object/from16 v8, p9

    :goto_f
    move/from16 v1, v23

    goto :goto_11

    :cond_17
    const/high16 v8, 0x30000000

    and-int/2addr v8, v1

    if-nez v8, :cond_16

    move-object/from16 v8, p9

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    const/high16 v25, 0x20000000

    goto :goto_10

    :cond_18
    const/high16 v25, 0x10000000

    :goto_10
    or-int v23, v23, v25

    goto :goto_f

    :goto_11
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_19

    or-int/lit8 v23, v2, 0x6

    move/from16 v25, v4

    move-object/from16 v4, p10

    goto :goto_13

    :cond_19
    move/from16 v25, v4

    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/16 v23, 0x4

    goto :goto_12

    :cond_1a
    const/16 v23, 0x2

    :goto_12
    or-int v23, v2, v23

    :goto_13
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_1b

    or-int/lit8 v23, v23, 0x30

    move/from16 v26, v4

    :goto_14
    move/from16 v4, v23

    goto :goto_16

    :cond_1b
    and-int/lit8 v26, v2, 0x30

    if-nez v26, :cond_1d

    move/from16 v26, v4

    move-object/from16 v4, p11

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/16 v20, 0x20

    goto :goto_15

    :cond_1c
    const/16 v20, 0x10

    :goto_15
    or-int v23, v23, v20

    goto :goto_14

    :cond_1d
    move/from16 v26, v4

    move-object/from16 v4, p11

    goto :goto_14

    :goto_16
    move/from16 v20, v5

    or-int/lit16 v5, v4, 0x180

    move/from16 v23, v5

    and-int/lit16 v5, v3, 0x2000

    if-eqz v5, :cond_1e

    or-int/lit16 v4, v4, 0xd80

    goto :goto_18

    :cond_1e
    and-int/lit16 v4, v2, 0xc00

    if-nez v4, :cond_20

    move-object/from16 v4, p13

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f

    const/16 v21, 0x800

    goto :goto_17

    :cond_1f
    const/16 v21, 0x400

    :goto_17
    or-int v21, v23, v21

    move/from16 v4, v21

    goto :goto_18

    :cond_20
    move-object/from16 v4, p13

    move/from16 v4, v23

    :goto_18
    move/from16 v21, v5

    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_22

    or-int/lit16 v4, v4, 0x6000

    :cond_21
    move/from16 v3, p14

    goto :goto_19

    :cond_22
    and-int/lit16 v3, v2, 0x6000

    if-nez v3, :cond_21

    move/from16 v3, p14

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_23

    move/from16 v16, v17

    :cond_23
    or-int v4, v4, v16

    :goto_19
    const v16, 0x12492493

    and-int v2, v1, v16

    const v3, 0x12492492

    move/from16 v16, v5

    const/4 v5, 0x1

    if-ne v2, v3, :cond_25

    and-int/lit16 v2, v4, 0x2493

    const/16 v3, 0x2492

    if-eq v2, v3, :cond_24

    goto :goto_1a

    :cond_24
    const/4 v2, 0x0

    goto :goto_1b

    :cond_25
    :goto_1a
    move v2, v5

    :goto_1b
    and-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v12, :cond_26

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_1c

    :cond_26
    move-object/from16 v2, p3

    :goto_1c
    if-eqz v15, :cond_27

    move v8, v5

    goto :goto_1d

    :cond_27
    move v8, v7

    :goto_1d
    if-eqz v19, :cond_28

    const/4 v12, 0x0

    goto :goto_1e

    :cond_28
    move v12, v11

    :goto_1e
    const/4 v3, 0x0

    if-eqz v13, :cond_29

    move-object v13, v3

    goto :goto_1f

    :cond_29
    move-object v13, v14

    :goto_1f
    if-eqz v20, :cond_2a

    sget-object v7, Landroidx/compose/foundation/text/KeyboardOptions;->h:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/text/KeyboardOptions;->i:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object v15, v7

    goto :goto_20

    :cond_2a
    move-object/from16 v15, p9

    :goto_20
    if-eqz v25, :cond_2b

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->g:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->h:Landroidx/compose/foundation/text/KeyboardActions;

    move/from16 v37, v16

    move-object/from16 v16, v7

    move/from16 v7, v37

    goto :goto_21

    :cond_2b
    move/from16 v7, v16

    move-object/from16 v16, p10

    :goto_21
    if-eqz v26, :cond_2d

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v14, :cond_2c

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v11, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v24, v11

    :goto_22
    const/4 v11, 0x2

    goto :goto_23

    :cond_2d
    move-object/from16 v24, p11

    goto :goto_22

    :goto_23
    sget-object v27, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;->WhileEditing:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    if-eqz v21, :cond_2e

    move-object/from16 v29, v3

    goto :goto_24

    :cond_2e
    move-object/from16 v29, p13

    :goto_24
    if-eqz v7, :cond_2f

    const/16 v30, 0x0

    goto :goto_25

    :cond_2f
    move/from16 v30, p14

    :goto_25
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v5, :cond_31

    if-ne v3, v11, :cond_30

    const v3, 0x121a0545

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_26
    move-object v7, v3

    goto :goto_27

    :cond_30
    const/4 v5, 0x0

    const v1, 0x1219f267

    invoke-static {v0, v1, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_31
    const/4 v5, 0x0

    const v3, 0x1219fc5f

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_26

    :goto_27
    and-int/lit8 v3, v1, 0xe

    or-int v3, v3, v18

    and-int/lit8 v5, v1, 0x70

    or-int/2addr v3, v5

    and-int/lit16 v5, v1, 0x380

    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v1

    or-int/2addr v3, v5

    shl-int/lit8 v5, v1, 0x3

    const/high16 v11, 0x380000

    and-int v14, v5, v11

    or-int/2addr v3, v14

    shl-int/lit8 v14, v1, 0x6

    const/high16 v17, 0xe000000

    and-int v17, v14, v17

    or-int v3, v3, v17

    const/high16 v17, 0x70000000

    and-int v14, v14, v17

    or-int v32, v3, v14

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v1, v1, 0xc00

    shl-int/lit8 v3, v4, 0x6

    and-int/lit16 v14, v3, 0x380

    or-int/2addr v1, v14

    and-int v5, v5, v17

    or-int v33, v1, v5

    shr-int/lit8 v1, v4, 0x3

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0xc00

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    and-int/2addr v3, v11

    or-int v34, v1, v3

    const v35, 0x167c480

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lb21;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v31, v0

    invoke-static/range {v4 .. v35}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;IIII)V

    move-object v3, v6

    move-object v4, v2

    move v5, v8

    move v7, v12

    move-object v8, v13

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v9, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v27

    move-object/from16 v14, v29

    move/from16 v15, v30

    goto :goto_28

    :cond_32
    move-object/from16 v31, v0

    move-object v3, v6

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p14

    move v5, v7

    move v7, v11

    move-object v8, v14

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    :goto_28
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_33

    move-object v1, v0

    new-instance v0, Lo80;

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Lo80;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;ZIII)V

    move-object/from16 v1, v36

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method
