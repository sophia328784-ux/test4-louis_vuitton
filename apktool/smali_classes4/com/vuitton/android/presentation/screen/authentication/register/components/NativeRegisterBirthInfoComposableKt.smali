.class public abstract Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBirthInfoComposableKt;
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
.method public static final a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v6, p5

    move-object/from16 v1, p9

    move/from16 v2, p12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x1d2f292d

    move-object/from16 v4, p11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v8, v2, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v3, v8

    :cond_3
    and-int/lit16 v8, v2, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v3, v8

    :cond_5
    and-int/lit16 v8, v2, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v3, v8

    :cond_7
    and-int/lit16 v8, v2, 0x6000

    if-nez v8, :cond_9

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v3, v8

    :cond_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v2

    if-nez v8, :cond_b

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v3, v8

    :cond_b
    const/high16 v8, 0x180000

    and-int/2addr v8, v2

    if-nez v8, :cond_d

    move-object/from16 v8, p6

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v14, 0x80000

    :goto_7
    or-int/2addr v3, v14

    goto :goto_8

    :cond_d
    move-object/from16 v8, p6

    :goto_8
    const/high16 v14, 0xc00000

    and-int/2addr v14, v2

    if-nez v14, :cond_f

    move-object/from16 v14, p7

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v15, 0x400000

    :goto_9
    or-int/2addr v3, v15

    goto :goto_a

    :cond_f
    move-object/from16 v14, p7

    :goto_a
    const/high16 v15, 0x6000000

    and-int/2addr v15, v2

    if-nez v15, :cond_11

    move-object/from16 v15, p8

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v3, v3, v16

    goto :goto_c

    :cond_11
    move-object/from16 v15, p8

    :goto_c
    const/high16 v16, 0x30000000

    and-int v16, v2, v16

    if-nez v16, :cond_13

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v16, 0x10000000

    :goto_d
    or-int v3, v3, v16

    :cond_13
    move/from16 v2, p13

    and-int/lit16 v9, v2, 0x200

    move/from16 v4, p10

    if-eqz v9, :cond_14

    const/16 v18, 0x6

    goto :goto_e

    :cond_14
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x4

    goto :goto_e

    :cond_15
    const/16 v18, 0x2

    :goto_e
    const v19, 0x12492493

    and-int v5, v3, v19

    const v0, 0x12492492

    if-ne v5, v0, :cond_17

    and-int/lit8 v0, v18, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_16

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v0, 0x1

    :goto_10
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v7, v5, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v9, :cond_18

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    move v0, v4

    :goto_11
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    and-int/lit8 v5, v18, 0xe

    const/4 v9, 0x4

    if-ne v5, v9, :cond_19

    const/4 v5, 0x1

    goto :goto_12

    :cond_19
    const/4 v5, 0x0

    :goto_12
    const/high16 v37, 0x70000000

    and-int v9, v3, v37

    const/high16 v2, 0x20000000

    if-ne v9, v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_13

    :cond_1a
    const/4 v2, 0x0

    :goto_13
    or-int/2addr v2, v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    move/from16 p10, v2

    const/4 v2, 0x0

    if-nez p10, :cond_1b

    if-ne v5, v9, :cond_1c

    :cond_1b
    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBirthInfoComposableKt$NativeRegisterBirthInfoComposable$1$1;

    invoke-direct {v5, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBirthInfoComposableKt$NativeRegisterBirthInfoComposable$1$1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->i:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/focus/FocusManager;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object/from16 p10, v5

    iget-object v5, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->e:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;

    iget-boolean v2, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->a:Z

    move/from16 v38, v0

    move/from16 v16, v2

    const-string v2, "NativeRegisterBirthInfoComposable"

    if-eqz v16, :cond_20

    const v0, -0x331c393b

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v4, "nativeRegister_birthdayDate_textField"

    invoke-static {v0, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->e:Ljava/lang/Long;

    and-int/lit16 v4, v3, 0x380

    move-object/from16 v16, v0

    const/16 v0, 0x100

    if-ne v4, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1e

    if-ne v4, v9, :cond_1f

    :cond_1e
    new-instance v4, Lk0;

    const/16 v0, 0x13

    invoke-direct {v4, v11, v0}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v3, 0x9

    const v4, 0xe000

    and-int/2addr v0, v4

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v14, v16

    const/16 v16, 0x1

    move-object/from16 v18, p7

    move/from16 v20, v0

    move-object/from16 v19, v7

    invoke-static/range {v14 .. v20}, Lcom/vuitton/android/presentation/compose/components/LVDatePickerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Long;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    const v4, -0x331581f1    # -1.2294156E8f

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    sget-object v15, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    iget-boolean v4, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->h:Z

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    if-eqz v4, :cond_23

    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_22

    move/from16 v18, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-nez v1, :cond_21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object/from16 v1, p9

    move/from16 v0, v18

    goto :goto_16

    :cond_22
    move/from16 v18, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-direct {v0, v14}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v0

    goto :goto_17

    :cond_23
    move/from16 v18, v0

    move-object/from16 v16, v14

    :goto_17
    const/high16 v0, 0x70000

    and-int/2addr v0, v3

    or-int/lit8 v1, v0, 0x30

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    shr-int/lit8 v4, v3, 0x3

    const/high16 v14, 0x1c00000

    and-int/2addr v4, v14

    or-int v34, v1, v4

    const v35, 0x6000036

    const v36, 0x3f309

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v21, p8

    move-object/from16 v19, v6

    move-object/from16 v33, v7

    move-object/from16 v20, v8

    invoke-static/range {v14 .. v36}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    sget-object v15, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    new-instance v4, La3;

    const/16 v6, 0x13

    invoke-direct {v4, v12, v6}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v6, La3;

    const/16 v8, 0x11

    invoke-direct {v6, v12, v8}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    or-int/lit16 v0, v0, 0x6030

    const/16 v35, 0x0

    const v36, 0x79fc9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, p5

    move/from16 v34, v0

    move-object/from16 v16, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-static/range {v14 .. v36}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v19

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->f:Z

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    goto :goto_18

    :cond_24
    const/4 v1, 0x0

    :goto_18
    const/16 v0, 0x1f4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x6

    invoke-static {v0, v6, v4, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v15

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_25

    new-instance v0, Lbe0;

    const/16 v6, 0x12

    invoke-direct {v0, v6}, Lbe0;-><init>(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v4, v0, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    const/16 v6, 0x1f4

    const/4 v15, 0x0

    invoke-static {v6, v15, v4, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v9, :cond_26

    new-instance v15, Lbe0;

    const/16 v9, 0x13

    invoke-direct {v15, v9}, Lbe0;-><init>(I)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v4, v15, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->n(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v4

    new-instance v6, Lg1;

    const/16 v8, 0x1a

    invoke-direct {v6, v10, v14, v13, v8}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v8, 0x749a71ab

    invoke-static {v8, v6, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    and-int/lit8 v8, v3, 0xe

    const v9, 0x186c00

    or-int/2addr v8, v9

    const/16 v9, 0x12

    move-object v15, v2

    const/4 v2, 0x0

    move-object/from16 v16, v5

    const/4 v5, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p10

    move-object v13, v15

    move-object/from16 v12, v16

    move v15, v3

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->n:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;->b:Z

    if-eqz v1, :cond_27

    const v1, -0x3285e527

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11, v7, v14}, Lcom/vuitton/android/presentation/screen/authentication/register/components/LegalNoticeKt;->a(Landroid/content/Context;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_27
    const v1, -0x32851a71

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/ColumnScope;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v13, v2}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v22

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v27, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v1

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "nativeRegister_confirm_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v2, 0x7f140635

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v21

    iget-boolean v2, v12, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;->c:Z

    shl-int/lit8 v3, v15, 0x3

    and-int v14, v3, v37

    const/16 v15, 0x178

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, p8

    move-object/from16 v18, v1

    move/from16 v24, v2

    move-object/from16 v16, v7

    invoke-static/range {v14 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 v11, v38

    goto :goto_1a

    :cond_28
    move-object/from16 v0, p0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    move v11, v4

    :goto_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_29

    new-instance v0, Lf40;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v12, p12

    move/from16 v13, p13

    move-object v2, v10

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v13}, Lf40;-><init>(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZII)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method
