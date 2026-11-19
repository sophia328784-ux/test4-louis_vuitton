.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldFreeformKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    const-string v1, "FormFieldFreeform"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x7837a8bf

    move-object/from16 v5, p9

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v5, p11, 0x1

    if-eqz v5, :cond_1

    or-int/lit8 v6, v10, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v10, 0x6

    if-nez v6, :cond_3

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v10

    goto :goto_1

    :cond_3
    move v6, v10

    :goto_1
    and-int/lit8 v9, v10, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v6, v9

    :cond_5
    and-int/lit16 v9, v10, 0x180

    if-nez v9, :cond_7

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_3

    :cond_6
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v6, v9

    :cond_7
    and-int/lit16 v9, v10, 0xc00

    move/from16 v15, p3

    if-nez v9, :cond_9

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v6, v9

    :cond_9
    and-int/lit16 v9, v10, 0x6000

    if-nez v9, :cond_b

    move-object/from16 v9, p4

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x4000

    goto :goto_5

    :cond_a
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v6, v11

    goto :goto_6

    :cond_b
    move-object/from16 v9, p4

    :goto_6
    const/high16 v11, 0x30000

    and-int/2addr v11, v10

    move-object/from16 v12, p5

    if-nez v11, :cond_d

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v11, 0x10000

    :goto_7
    or-int/2addr v6, v11

    :cond_d
    const/high16 v11, 0x180000

    and-int/2addr v11, v10

    if-nez v11, :cond_f

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x100000

    goto :goto_8

    :cond_e
    const/high16 v11, 0x80000

    :goto_8
    or-int/2addr v6, v11

    :cond_f
    const/high16 v11, 0xc00000

    and-int/2addr v11, v10

    if-nez v11, :cond_11

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/high16 v11, 0x800000

    goto :goto_9

    :cond_10
    const/high16 v11, 0x400000

    :goto_9
    or-int/2addr v6, v11

    :cond_11
    const/high16 v11, 0x6000000

    and-int/2addr v11, v10

    if-nez v11, :cond_14

    if-nez p8, :cond_12

    const/4 v11, -0x1

    goto :goto_a

    :cond_12
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_a
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_13

    const/high16 v11, 0x4000000

    goto :goto_b

    :cond_13
    const/high16 v11, 0x2000000

    :goto_b
    or-int/2addr v6, v11

    :cond_14
    const v11, 0x2492493

    and-int/2addr v11, v6

    const v14, 0x2492492

    const/16 v16, 0x1

    if-eq v11, v14, :cond_15

    move/from16 v11, v16

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_c
    and-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_22

    if-eqz v5, :cond_16

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_16
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lkotlin/text/Regex;

    const-string v14, "\\s+\\*$"

    invoke-direct {v11, v14}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v14, ""

    invoke-virtual {v11, v5, v14}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f1410dc

    invoke-static {v4, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v5

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    move/from16 v19, v6

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_18

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c:Z

    if-eqz v5, :cond_17

    const-string v5, ", "

    invoke-static {v11, v5, v13}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_17
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v11

    :cond_18
    check-cast v5, Ljava/lang/String;

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->d:Landroidx/compose/ui/autofill/ContentType;

    if-eqz v11, :cond_19

    move/from16 v11, v16

    goto :goto_d

    :cond_19
    const/4 v11, 0x0

    :goto_d
    new-instance v13, Lyz;

    const/4 v9, 0x0

    invoke-direct {v13, v3, v9}, Lyz;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;I)V

    and-int/lit8 v9, v19, 0xe

    invoke-static {v0, v11, v13, v4, v9}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_1a

    new-instance v11, Llt;

    const/4 v13, 0x3

    invoke-direct {v11, v5, v13}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-static {v9, v5, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/high16 v11, 0x380000

    and-int v11, v19, v11

    const/high16 v13, 0x100000

    if-ne v11, v13, :cond_1b

    move/from16 v11, v16

    goto :goto_e

    :cond_1b
    move v11, v5

    :goto_e
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_1c

    if-ne v13, v6, :cond_1d

    :cond_1c
    new-instance v13, Lk0;

    const/16 v11, 0xd

    invoke-direct {v13, v7, v11}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v13}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->k:Ljava/lang/String;

    if-nez v11, :cond_1e

    goto :goto_f

    :cond_1e
    move-object v14, v11

    :goto_f
    invoke-static {v9, v14}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->b:Ljava/lang/String;

    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->l:Z

    invoke-virtual {v2, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/high16 v14, 0x1c00000

    and-int v14, v19, v14

    const/high16 v5, 0x800000

    if-ne v14, v5, :cond_1f

    goto :goto_10

    :cond_1f
    const/16 v16, 0x0

    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v16, :cond_20

    if-ne v5, v6, :cond_21

    :cond_20
    new-instance v5, Ly2;

    const/16 v6, 0xc

    invoke-direct {v5, v8, v6}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v21, v5

    check-cast v21, Lkotlin/jvm/functions/Function1;

    new-instance v20, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3e

    const/16 v28, 0x0

    invoke-direct/range {v20 .. v28}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    shr-int/lit8 v5, v19, 0xc

    and-int/lit8 v5, v5, 0x70

    shr-int/lit8 v6, v19, 0xf

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v5, v6

    shl-int/lit8 v6, v19, 0x3

    const v14, 0xe000

    and-int/2addr v6, v14

    or-int/2addr v5, v6

    const/high16 v6, 0x70000000

    shl-int/lit8 v14, v19, 0xf

    and-int/2addr v6, v14

    or-int v27, v5, v6

    const/16 v28, 0x6000

    const/16 v29, 0x3900

    const/16 v19, 0x0

    const/16 v25, 0x1

    move-object/from16 v14, p8

    move-object/from16 v26, v4

    move/from16 v17, v9

    move-object/from16 v16, v18

    move-object/from16 v21, v20

    move-object/from16 v20, p4

    move-object/from16 v18, v1

    invoke-static/range {v11 .. v29}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;III)V

    :goto_11
    move-object v1, v0

    goto :goto_12

    :cond_22
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_11

    :goto_12
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_23

    new-instance v0, Lb0;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lb0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method
