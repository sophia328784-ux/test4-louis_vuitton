.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldReadOnlyKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLandroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p8

    const-string v1, "FormFieldReadOnly"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;->a:Ljava/lang/String;

    const v9, 0x3e9d605b

    move-object/from16 v10, p7

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    or-int/lit8 v10, v8, 0x6

    and-int/lit8 v11, v8, 0x30

    if-nez v11, :cond_2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x20

    goto :goto_0

    :cond_1
    const/16 v11, 0x10

    :goto_0
    or-int/2addr v10, v11

    :cond_2
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_4

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x100

    goto :goto_1

    :cond_3
    const/16 v11, 0x80

    :goto_1
    or-int/2addr v10, v11

    :cond_4
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_6

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x800

    goto :goto_2

    :cond_5
    const/16 v11, 0x400

    :goto_2
    or-int/2addr v10, v11

    :cond_6
    and-int/lit16 v11, v8, 0x6000

    if-nez v11, :cond_8

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x4000

    goto :goto_3

    :cond_7
    const/16 v11, 0x2000

    :goto_3
    or-int/2addr v10, v11

    :cond_8
    const/high16 v11, 0x30000

    and-int/2addr v11, v8

    if-nez v11, :cond_b

    if-nez p5, :cond_9

    const/4 v11, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_4
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v10, v11

    :cond_b
    const/high16 v11, 0x180000

    and-int/2addr v11, v8

    if-nez v11, :cond_d

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_c
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v10, v11

    :cond_d
    const v11, 0x92493

    and-int/2addr v11, v10

    const v13, 0x92492

    const/4 v14, 0x0

    if-eq v11, v13, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    move v11, v14

    :goto_7
    and-int/lit8 v13, v10, 0x1

    invoke-virtual {v9, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_16

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v1, v11, :cond_f

    const v1, -0x73e9a773

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a:Ljava/util/List;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_f
    const v1, -0x73e7c123

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->k:Ljava/lang/String;

    if-nez v1, :cond_10

    const-string v1, ""

    :cond_10
    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    if-eqz v4, :cond_11

    iget-boolean v1, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;->b:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    move v1, v14

    :goto_9
    sget-object v13, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/content/Context;

    invoke-virtual {v2, v15}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    if-eqz v7, :cond_12

    const v12, 0xcc72f5f

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->J0:I

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_a
    move-object/from16 v22, v12

    goto :goto_b

    :cond_12
    const v12, -0x73e11cbe

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v12, 0x0

    goto :goto_a

    :goto_b
    iget-boolean v12, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->l:Z

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    invoke-virtual {v2, v13}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    const v13, 0xe000

    and-int/2addr v13, v10

    const/16 v14, 0x4000

    if-ne v13, v14, :cond_13

    const/4 v14, 0x1

    goto :goto_c

    :cond_13
    const/4 v14, 0x0

    :goto_c
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v13, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_14

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v13, :cond_15

    :cond_14
    new-instance v14, Ldt;

    const/16 v13, 0x12

    invoke-direct {v14, v5, v2, v13}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v21, v14

    check-cast v21, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v10, v10, 0x6

    and-int/lit16 v10, v10, 0x1c00

    const/16 v25, 0x0

    const/16 v26, 0x2704

    move/from16 v16, v12

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p5

    move v14, v1

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object v10, v6

    invoke-static/range {v10 .. v26}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V

    :goto_d
    move-object v1, v0

    goto :goto_e

    :cond_16
    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_d

    :goto_e
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v0, Lzv;

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lzv;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZI)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
