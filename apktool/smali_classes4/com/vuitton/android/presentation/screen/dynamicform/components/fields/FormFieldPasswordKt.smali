.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPasswordKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    const-string v1, "FormFieldPassword"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x15ad189f

    move-object/from16 v6, p9

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    or-int/lit8 v6, v10, 0x6

    and-int/lit8 v9, v10, 0x30

    if-nez v9, :cond_2

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_0

    :cond_1
    const/16 v9, 0x10

    :goto_0
    or-int/2addr v6, v9

    :cond_2
    and-int/lit16 v9, v10, 0x180

    if-nez v9, :cond_4

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x100

    goto :goto_1

    :cond_3
    const/16 v9, 0x80

    :goto_1
    or-int/2addr v6, v9

    :cond_4
    and-int/lit16 v9, v10, 0xc00

    move/from16 v15, p3

    if-nez v9, :cond_6

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x800

    goto :goto_2

    :cond_5
    const/16 v9, 0x400

    :goto_2
    or-int/2addr v6, v9

    :cond_6
    and-int/lit16 v9, v10, 0x6000

    if-nez v9, :cond_8

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x4000

    goto :goto_3

    :cond_7
    const/16 v9, 0x2000

    :goto_3
    or-int/2addr v6, v9

    :cond_8
    const/high16 v9, 0x30000

    and-int/2addr v9, v10

    move-object/from16 v12, p5

    if-nez v9, :cond_a

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x20000

    goto :goto_4

    :cond_9
    const/high16 v9, 0x10000

    :goto_4
    or-int/2addr v6, v9

    :cond_a
    const/high16 v9, 0x180000

    and-int/2addr v9, v10

    if-nez v9, :cond_c

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x100000

    goto :goto_5

    :cond_b
    const/high16 v9, 0x80000

    :goto_5
    or-int/2addr v6, v9

    :cond_c
    const/high16 v9, 0xc00000

    and-int/2addr v9, v10

    if-nez v9, :cond_e

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/high16 v9, 0x800000

    goto :goto_6

    :cond_d
    const/high16 v9, 0x400000

    :goto_6
    or-int/2addr v6, v9

    :cond_e
    const/high16 v9, 0x6000000

    and-int/2addr v9, v10

    if-nez v9, :cond_11

    if-nez p8, :cond_f

    const/4 v9, -0x1

    goto :goto_7

    :cond_f
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_7
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x4000000

    goto :goto_8

    :cond_10
    const/high16 v9, 0x2000000

    :goto_8
    or-int/2addr v6, v9

    :cond_11
    const v9, 0x2492493

    and-int/2addr v9, v6

    const v14, 0x2492492

    if-eq v9, v14, :cond_12

    const/4 v9, 0x1

    goto :goto_9

    :cond_12
    const/4 v9, 0x0

    :goto_9
    and-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_20

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    new-instance v13, Lkotlin/text/Regex;

    move/from16 v18, v6

    const-string v6, "\\s+\\*$"

    invoke-direct {v13, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v13, v14, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v6

    const v6, 0x7f1410dc

    invoke-static {v4, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const v10, 0x7f140340

    invoke-static {v4, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v14

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v14, :cond_16

    iget-boolean v12, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c:Z

    move/from16 v21, v12

    const-string v12, ". "

    const-string v15, ", "

    if-eqz v21, :cond_13

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v11, v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_13
    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v11, v8, :cond_14

    invoke-static {v13, v12, v10}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_14
    if-eqz v21, :cond_15

    invoke-static {v13, v15, v6}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_15
    :goto_a
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v12, v13

    :cond_16
    check-cast v12, Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->d:Landroidx/compose/ui/autofill/ContentType;

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_b

    :cond_17
    const/4 v6, 0x0

    :goto_b
    new-instance v8, Lyz;

    const/4 v10, 0x1

    invoke-direct {v8, v3, v10}, Lyz;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;I)V

    and-int/lit8 v13, v18, 0xe

    invoke-static {v0, v6, v8, v4, v13}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v14, :cond_18

    new-instance v8, Llt;

    const/4 v13, 0x4

    invoke-direct {v8, v12, v13}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    invoke-static {v6, v12, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/high16 v8, 0x380000

    and-int v8, v18, v8

    const/high16 v13, 0x100000

    if-ne v8, v13, :cond_19

    move v8, v10

    goto :goto_c

    :cond_19
    move v8, v12

    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_1a

    if-ne v13, v14, :cond_1b

    :cond_1a
    new-instance v13, Lk0;

    const/16 v8, 0xe

    invoke-direct {v13, v7, v8}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v13}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->k:Ljava/lang/String;

    if-nez v8, :cond_1c

    move-object/from16 v8, v19

    :cond_1c
    invoke-static {v6, v8}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "_TogglePassword_button"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->b:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v6, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->l:Z

    iget v8, v5, Landroidx/compose/foundation/text/KeyboardOptions;->d:I

    const/high16 v9, 0x1c00000

    and-int v9, v18, v9

    const/high16 v15, 0x800000

    if-ne v9, v15, :cond_1d

    goto :goto_d

    :cond_1d
    move v10, v12

    :goto_d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v10, :cond_1f

    if-ne v9, v14, :cond_1e

    goto :goto_e

    :cond_1e
    move-object/from16 v12, p7

    goto :goto_f

    :cond_1f
    :goto_e
    new-instance v9, Ly2;

    const/16 v10, 0xd

    move-object/from16 v12, p7

    invoke-direct {v9, v12, v10}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    move-object/from16 v25, v9

    check-cast v25, Lkotlin/jvm/functions/Function1;

    new-instance v24, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x3e

    const/16 v32, 0x0

    invoke-direct/range {v24 .. v32}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    shr-int/lit8 v9, v18, 0xc

    and-int/lit8 v9, v9, 0x70

    shr-int/lit8 v10, v18, 0xf

    and-int/lit16 v10, v10, 0x1c00

    or-int/2addr v9, v10

    shl-int/lit8 v10, v18, 0x3

    const v14, 0xe000

    and-int/2addr v10, v14

    or-int v26, v9, v10

    const/16 v27, 0x6000

    const/16 v28, 0x1820

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v20

    move-object/from16 v20, v24

    const/16 v24, 0x1

    move/from16 v15, p3

    move-object/from16 v12, p5

    move-object/from16 v14, p8

    move-object/from16 v18, v1

    move-object/from16 v25, v4

    move/from16 v17, v6

    move/from16 v19, v8

    invoke-static/range {v11 .. v28}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVPasswordTextFieldKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;ILandroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;III)V

    :goto_10
    move-object v1, v0

    goto :goto_11

    :cond_20
    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_10

    :goto_11
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_21

    new-instance v0, Ld4;

    move/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Ld4;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method
