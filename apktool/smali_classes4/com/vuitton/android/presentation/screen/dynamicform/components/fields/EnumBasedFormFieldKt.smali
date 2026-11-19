.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/EnumBasedFormFieldKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p8

    const-string v1, "EnumBasedFormField"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, -0x53a79759

    move-object/from16 v7, p7

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v7, p9, 0x1

    if-eqz v7, :cond_1

    or-int/lit8 v10, v8, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v10, v8, 0x6

    if-nez v10, :cond_3

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x4

    goto :goto_0

    :cond_2
    const/4 v10, 0x2

    :goto_0
    or-int/2addr v10, v8

    goto :goto_1

    :cond_3
    move v10, v8

    :goto_1
    and-int/lit8 v11, v8, 0x30

    if-nez v11, :cond_5

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x20

    goto :goto_2

    :cond_4
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v10, v11

    :cond_5
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_8

    and-int/lit16 v11, v8, 0x200

    if-nez v11, :cond_6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    :goto_3
    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v10, v11

    :cond_8
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_a

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x800

    goto :goto_5

    :cond_9
    const/16 v11, 0x400

    :goto_5
    or-int/2addr v10, v11

    :cond_a
    and-int/lit16 v11, v8, 0x6000

    if-nez v11, :cond_c

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x4000

    goto :goto_6

    :cond_b
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v10, v11

    :cond_c
    and-int/lit8 v11, p9, 0x20

    const/high16 v14, 0x20000

    const/high16 v15, 0x30000

    if-eqz v11, :cond_e

    or-int/2addr v10, v15

    :cond_d
    move-object/from16 v15, p5

    goto :goto_8

    :cond_e
    and-int/2addr v15, v8

    if-nez v15, :cond_d

    move-object/from16 v15, p5

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v16, v14

    goto :goto_7

    :cond_f
    const/high16 v16, 0x10000

    :goto_7
    or-int v10, v10, v16

    :goto_8
    const/high16 v16, 0x180000

    and-int v16, v8, v16

    if-nez v16, :cond_12

    if-nez p6, :cond_10

    const/16 v16, -0x1

    :goto_9
    move/from16 v12, v16

    goto :goto_a

    :cond_10
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    goto :goto_9

    :goto_a
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v12

    if-eqz v12, :cond_11

    const/high16 v12, 0x100000

    goto :goto_b

    :cond_11
    const/high16 v12, 0x80000

    :goto_b
    or-int/2addr v10, v12

    :cond_12
    const v12, 0x92493

    and-int/2addr v12, v10

    const v13, 0x92492

    const/16 v17, 0x1

    if-eq v12, v13, :cond_13

    move/from16 v12, v17

    goto :goto_c

    :cond_13
    const/4 v12, 0x0

    :goto_c
    and-int/lit8 v13, v10, 0x1

    invoke-virtual {v6, v13, v12}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v12

    if-eqz v12, :cond_24

    if-eqz v7, :cond_14

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_14
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v11, :cond_16

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_15

    new-instance v7, Liv;

    const/16 v11, 0xd

    invoke-direct {v7, v11}, Liv;-><init>(I)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v7, Lkotlin/jvm/functions/Function1;

    goto :goto_d

    :cond_16
    move-object v7, v15

    :goto_d
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v2, v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lkotlin/text/Regex;

    const-string v15, "\\s+\\*$"

    invoke-direct {v13, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v15, ""

    invoke-virtual {v13, v12, v15}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f1410dc

    invoke-static {v6, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_18

    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c:Z

    if-eqz v9, :cond_17

    const-string v9, ", "

    invoke-static {v12, v9, v13}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_17
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v9, v12

    :cond_18
    check-cast v9, Ljava/lang/String;

    const/high16 v12, 0x70000

    and-int/2addr v12, v10

    if-ne v12, v14, :cond_19

    move/from16 v12, v17

    goto :goto_e

    :cond_19
    const/4 v12, 0x0

    :goto_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_1a

    if-ne v13, v1, :cond_1b

    :cond_1a
    new-instance v13, Lk0;

    const/16 v12, 0xa

    invoke-direct {v13, v7, v12}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v13}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_1c

    new-instance v13, Llt;

    const/4 v14, 0x2

    invoke-direct {v13, v9, v14}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    invoke-static {v12, v9, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->k:Ljava/lang/String;

    if-nez v13, :cond_1d

    goto :goto_f

    :cond_1d
    move-object v15, v13

    :goto_f
    invoke-static {v12, v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    invoke-virtual {v2, v13}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move/from16 v18, v9

    move-object v9, v12

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->d()Ljava/util/ArrayList;

    move-result-object v12

    move-object v14, v13

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->c()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_1e

    move-object v15, v14

    move/from16 v14, v17

    :goto_10
    move-object/from16 v22, v0

    goto :goto_11

    :cond_1e
    move-object v15, v14

    move/from16 v14, v18

    goto :goto_10

    :goto_11
    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->l:Z

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v2, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const v19, 0xe000

    move/from16 v20, v0

    and-int v0, v10, v19

    const/16 v2, 0x4000

    if-ne v0, v2, :cond_1f

    move/from16 v0, v17

    goto :goto_12

    :cond_1f
    move/from16 v0, v18

    :goto_12
    and-int/lit16 v2, v10, 0x380

    move/from16 p5, v0

    const/16 v0, 0x100

    if-eq v2, v0, :cond_21

    and-int/lit16 v0, v10, 0x200

    if-eqz v0, :cond_20

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_13

    :cond_20
    move/from16 v17, v18

    :cond_21
    :goto_13
    or-int v0, p5, v17

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_22

    if-ne v2, v1, :cond_23

    :cond_22
    new-instance v2, Lgv;

    const/4 v0, 0x2

    invoke-direct {v2, v5, v3, v0}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v10, 0xf

    and-int/lit8 v0, v0, 0x70

    const/high16 v1, 0x30000000

    or-int/2addr v0, v1

    const/16 v21, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, p6

    move-object/from16 v19, v6

    move-object/from16 v16, v11

    move-object v11, v15

    move/from16 v15, v20

    move/from16 v20, v0

    invoke-static/range {v9 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    move-object v6, v7

    move-object/from16 v1, v22

    goto :goto_14

    :cond_24
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    move-object v6, v15

    :goto_14
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_25

    new-instance v0, Lbg;

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lbg;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method
