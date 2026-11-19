.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVMultilineTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVMultilineTextFieldKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
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
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x431d0000    # 157.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVMultilineTextFieldKt;->a:F

    return-void
.end method

.method public static final a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardActions;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 47

    move-object/from16 v0, p2

    move/from16 v13, p13

    move/from16 v14, p14

    const-string v1, "LVMultilineTextField-0J4Nqao"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x15c8489d

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v2, v13, 0x6

    move-object/from16 v15, p0

    if-nez v2, :cond_2

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    and-int/lit8 v5, v13, 0x30

    if-nez v5, :cond_4

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    goto :goto_3

    :cond_4
    move-object/from16 v5, p1

    :goto_3
    and-int/lit16 v6, v13, 0x180

    if-nez v6, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    :cond_6
    or-int/lit16 v6, v2, 0xc00

    and-int/lit8 v7, v14, 0x10

    if-eqz v7, :cond_8

    or-int/lit16 v6, v2, 0x6c00

    :cond_7
    move/from16 v2, p4

    goto :goto_6

    :cond_8
    and-int/lit16 v2, v13, 0x6000

    if-nez v2, :cond_7

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x4000

    goto :goto_5

    :cond_9
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v6, v8

    :goto_6
    const/high16 v8, 0x30000

    and-int v9, v13, v8

    if-nez v9, :cond_b

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v10, 0x10000

    :goto_7
    or-int/2addr v6, v10

    goto :goto_8

    :cond_b
    move-object/from16 v9, p5

    :goto_8
    and-int/lit8 v10, v14, 0x40

    const/high16 v11, 0x180000

    if-eqz v10, :cond_d

    or-int/2addr v6, v11

    :cond_c
    move/from16 v11, p6

    goto :goto_a

    :cond_d
    and-int/2addr v11, v13

    if-nez v11, :cond_c

    move/from16 v11, p6

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x100000

    goto :goto_9

    :cond_e
    const/high16 v12, 0x80000

    :goto_9
    or-int/2addr v6, v12

    :goto_a
    and-int/lit16 v12, v14, 0x80

    const/high16 v16, 0xc00000

    if-eqz v12, :cond_f

    or-int v6, v6, v16

    move/from16 p2, v8

    move-object/from16 v8, p7

    goto :goto_c

    :cond_f
    and-int v16, v13, v16

    move/from16 p2, v8

    move-object/from16 v8, p7

    if-nez v16, :cond_11

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x800000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x400000

    :goto_b
    or-int v6, v6, v16

    :cond_11
    :goto_c
    const/high16 v16, 0x6000000

    or-int v16, v6, v16

    and-int/lit16 v4, v14, 0x200

    if-eqz v4, :cond_13

    const/high16 v16, 0x36000000

    or-int v16, v6, v16

    :cond_12
    move/from16 v6, p9

    goto :goto_e

    :cond_13
    const/high16 v6, 0x30000000

    and-int/2addr v6, v13

    if-nez v6, :cond_12

    move/from16 v6, p9

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x20000000

    goto :goto_d

    :cond_14
    const/high16 v17, 0x10000000

    :goto_d
    or-int v16, v16, v17

    :goto_e
    const v17, 0x12492493

    and-int v2, v16, v17

    move/from16 v17, v4

    const v4, 0x12492492

    const/4 v5, 0x0

    if-ne v2, v4, :cond_15

    move v2, v5

    goto :goto_f

    :cond_15
    const/4 v2, 0x1

    :goto_f
    and-int/lit8 v4, v16, 0x1

    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-eqz v7, :cond_16

    const/16 v19, 0x1

    goto :goto_10

    :cond_16
    move/from16 v19, p4

    :goto_10
    if-eqz v10, :cond_17

    move/from16 v23, v5

    goto :goto_11

    :cond_17
    move/from16 v23, v11

    :goto_11
    if-eqz v12, :cond_18

    const/4 v4, 0x0

    move-object/from16 v24, v4

    goto :goto_12

    :cond_18
    move-object/from16 v24, v8

    :goto_12
    sget-object v4, Landroidx/compose/foundation/text/KeyboardActions;->g:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v27, Landroidx/compose/foundation/text/KeyboardActions;->h:Landroidx/compose/foundation/text/KeyboardActions;

    if-eqz v17, :cond_19

    sget-object v4, Landroidx/compose/ui/text/input/KeyboardCapitalization;->b:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/input/KeyboardCapitalization;->c:I

    move/from16 v29, v4

    goto :goto_13

    :cond_19
    move/from16 v29, v6

    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v6, :cond_1a

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_1b

    new-instance v7, Ln60;

    const/4 v6, 0x1

    invoke-direct {v7, v6}, Ln60;-><init>(I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_14

    :cond_1b
    const/4 v6, 0x1

    :goto_14
    check-cast v7, Lkotlin/jvm/functions/Function1;

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVMultilineTextFieldKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    if-eq v8, v6, :cond_1d

    const/4 v6, 0x2

    if-ne v8, v6, :cond_1c

    const v6, -0x3b2709b6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    move-object/from16 v18, v6

    goto :goto_16

    :cond_1c
    const v1, -0x3b271c94

    invoke-static {v0, v1, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1d
    const v6, -0x3b27129c

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :goto_16
    sget v5, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVMultilineTextFieldKt;->a:F

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v3, v5, v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const-string v6, "textArea_input_view"

    invoke-static {v5, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const-string v5, "textArea_placeHolder_text"

    invoke-static {v1, v5}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v22

    const-string v5, "textArea_supporting_text"

    invoke-static {v1, v5}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->b:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v31, Landroidx/compose/ui/text/input/KeyboardType;->c:I

    new-instance v26, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v36, 0x7a

    const/16 v37, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v26

    invoke-direct/range {v28 .. v37}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v6, v29

    and-int/lit8 v1, v16, 0xe

    or-int v1, v1, p2

    and-int/lit8 v5, v16, 0x70

    or-int/2addr v1, v5

    const v5, 0xe000

    and-int v5, v16, v5

    or-int/2addr v1, v5

    shl-int/lit8 v5, v16, 0x3

    const/high16 v8, 0x380000

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    shl-int/lit8 v5, v16, 0x6

    const/high16 v8, 0xe000000

    and-int/2addr v8, v5

    or-int/2addr v1, v8

    const/high16 v8, 0x70000000

    and-int/2addr v5, v8

    or-int v43, v1, v5

    shr-int/lit8 v1, v16, 0x12

    and-int/lit16 v1, v1, 0x380

    const v5, 0x36c00

    or-int v44, v1, v5

    const/16 v45, 0x1b6

    const/high16 v46, 0x78f0000

    const/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x6

    const/16 v30, 0x6

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v16, p1

    move-object/from16 v42, v0

    move-object/from16 v35, v4

    move-object/from16 v37, v7

    move-object/from16 v21, v9

    invoke-static/range {v15 .. v46}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;IIII)V

    move-object v4, v2

    move/from16 v5, v19

    move/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v27

    move-object/from16 v11, v35

    move-object/from16 v12, v37

    :goto_17
    move v10, v6

    goto :goto_18

    :cond_1e
    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    move v7, v11

    move-object/from16 v11, p10

    goto :goto_17

    :goto_18
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1f

    new-instance v0, Lp60;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v14}, Lp60;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardActions;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method
