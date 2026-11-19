.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    move/from16 v12, p11

    move/from16 v13, p12

    if-eqz v0, :cond_0

    const-string v1, "LVDropdown"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v14, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3f58249

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_4

    :cond_3
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_6

    if-nez p1, :cond_4

    const/4 v5, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_2
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_3

    :cond_5
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v0, v5

    :cond_6
    :goto_4
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_5

    :cond_7
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v0, v7

    goto :goto_6

    :cond_8
    move-object/from16 v5, p2

    :goto_6
    and-int/lit16 v7, v12, 0xc00

    if-nez v7, :cond_a

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x800

    goto :goto_7

    :cond_9
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v0, v7

    :cond_a
    and-int/lit16 v7, v12, 0x6000

    if-nez v7, :cond_c

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x4000

    goto :goto_8

    :cond_b
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v0, v7

    :cond_c
    and-int/lit8 v7, v13, 0x20

    const/high16 v8, 0x30000

    if-eqz v7, :cond_e

    or-int/2addr v0, v8

    :cond_d
    move/from16 v8, p5

    goto :goto_a

    :cond_e
    and-int/2addr v8, v12

    if-nez v8, :cond_d

    move/from16 v8, p5

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_f

    const/high16 v9, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v9, 0x10000

    :goto_9
    or-int/2addr v0, v9

    :goto_a
    and-int/lit8 v9, v13, 0x40

    const/high16 v10, 0x180000

    if-eqz v9, :cond_11

    or-int/2addr v0, v10

    :cond_10
    move/from16 v10, p6

    goto :goto_c

    :cond_11
    and-int/2addr v10, v12

    if-nez v10, :cond_10

    move/from16 v10, p6

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v16, 0x80000

    :goto_b
    or-int v0, v0, v16

    :goto_c
    and-int/lit16 v1, v13, 0x80

    const/high16 v16, 0xc00000

    if-eqz v1, :cond_13

    or-int v0, v0, v16

    move-object/from16 v6, p7

    goto :goto_e

    :cond_13
    and-int v16, v12, v16

    move-object/from16 v6, p7

    if-nez v16, :cond_15

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x800000

    goto :goto_d

    :cond_14
    const/high16 v16, 0x400000

    :goto_d
    or-int v0, v0, v16

    :cond_15
    :goto_e
    and-int/lit16 v3, v13, 0x100

    const/high16 v17, 0x6000000

    if-eqz v3, :cond_17

    or-int v0, v0, v17

    :cond_16
    move/from16 v17, v0

    move-object/from16 v0, p8

    goto :goto_10

    :cond_17
    and-int v17, v12, v17

    if-nez v17, :cond_16

    move/from16 v17, v0

    move-object/from16 v0, p8

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    const/high16 v18, 0x4000000

    goto :goto_f

    :cond_18
    const/high16 v18, 0x2000000

    :goto_f
    or-int v17, v17, v18

    :goto_10
    and-int/lit16 v0, v13, 0x200

    const/high16 v18, 0x30000000

    if-eqz v0, :cond_1a

    or-int v17, v17, v18

    :cond_19
    move/from16 v18, v0

    move/from16 v0, p9

    goto :goto_12

    :cond_1a
    and-int v18, v12, v18

    if-nez v18, :cond_19

    move/from16 v18, v0

    move/from16 v0, p9

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/high16 v19, 0x20000000

    goto :goto_11

    :cond_1b
    const/high16 v19, 0x10000000

    :goto_11
    or-int v17, v17, v19

    :goto_12
    const v19, 0x12492493

    and-int v0, v17, v19

    move/from16 v19, v1

    const v1, 0x12492492

    move/from16 v20, v2

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    and-int/lit8 v1, v17, 0x1

    invoke-virtual {v15, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz v20, :cond_1d

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v20, v0

    goto :goto_14

    :cond_1d
    move-object/from16 v20, p1

    :goto_14
    if-eqz v7, :cond_1e

    const/4 v8, 0x1

    :cond_1e
    if-eqz v9, :cond_1f

    const/4 v6, 0x0

    goto :goto_15

    :cond_1f
    move v6, v10

    :goto_15
    if-eqz v19, :cond_20

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_16

    :cond_20
    move-object/from16 v7, p7

    :goto_16
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v3, :cond_22

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_21

    new-instance v1, Lx20;

    const/16 v3, 0x18

    invoke-direct {v1, v3}, Lx20;-><init>(I)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v10, v1

    goto :goto_17

    :cond_22
    move-object/from16 v10, p8

    :goto_17
    if-eqz v18, :cond_23

    const/4 v1, 0x0

    goto :goto_18

    :cond_23
    move/from16 v1, p9

    :goto_18
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v3, v17, 0x9

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    and-int/lit8 v17, v3, 0x70

    xor-int/lit8 v2, v17, 0x30

    move/from16 p1, v1

    const/16 v1, 0x20

    if-le v2, v1, :cond_24

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    and-int/lit8 v2, v3, 0x30

    if-ne v2, v1, :cond_26

    :cond_25
    const/4 v1, 0x1

    goto :goto_19

    :cond_26
    const/4 v1, 0x0

    :goto_19
    or-int/2addr v1, v9

    and-int/lit16 v2, v3, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/16 v9, 0x100

    if-le v2, v9, :cond_27

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_27
    and-int/lit16 v2, v3, 0x180

    if-ne v2, v9, :cond_29

    :cond_28
    const/4 v2, 0x1

    goto :goto_1a

    :cond_29
    const/4 v2, 0x0

    :goto_1a
    or-int/2addr v1, v2

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2a

    if-ne v2, v0, :cond_2b

    :cond_2a
    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    invoke-direct {v2, v4, v11, v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;-><init>(Ljava/util/List;Ljava/lang/Integer;Z)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2c

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$WhenMappings;->a:[I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    const/4 v9, 0x1

    if-eq v3, v9, :cond_2e

    const/4 v9, 0x2

    if-ne v3, v9, :cond_2d

    const v3, 0x23624dc4

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_2d
    const/4 v9, 0x0

    const v0, 0x23623ae6

    invoke-static {v15, v0, v9}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v9, 0x0

    const v3, 0x236244de

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->m(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFields;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    const-string v9, "dropdown_Section_view"

    invoke-static {v14, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->a()Z

    move-result v17

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 p0, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_30

    if-ne v1, v0, :cond_2f

    goto :goto_1c

    :cond_2f
    move-object/from16 v23, v2

    goto :goto_1d

    :cond_30
    :goto_1c
    new-instance v21, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$LVDropdown$5$1;

    const-string v26, "onExpandedChange(Z)V"

    const/16 v27, 0x0

    const/16 v22, 0x1

    const-class v24, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    const-string v25, "onExpandedChange"

    move-object/from16 v23, v2

    invoke-direct/range {v21 .. v27}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v1, v21

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/atoms/a;

    move-object/from16 v1, p0

    move-object v9, v4

    move v4, v8

    move-object/from16 v2, v23

    move/from16 v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/atoms/a;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;ZLjava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x469f7db3

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0xc00

    move-object/from16 p8, v0

    move/from16 p10, v1

    move-object/from16 p9, v15

    move-object/from16 p7, v16

    move/from16 p5, v17

    move-object/from16 p6, v18

    invoke-static/range {p5 .. p10}, Landroidx/compose/material3/ExposedDropdownMenuKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v0, p9

    move-object v9, v10

    move-object/from16 v2, v20

    move v10, v8

    move-object v8, v7

    move v7, v6

    move v6, v4

    goto :goto_1e

    :cond_31
    move-object v0, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move v6, v8

    move v7, v10

    move-object/from16 v8, p7

    move/from16 v10, p9

    :goto_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_32

    new-instance v0, Lu50;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move v11, v12

    move v12, v13

    move-object v1, v14

    invoke-direct/range {v0 .. v12}, Lu50;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;ZII)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_32
    return-void
.end method
