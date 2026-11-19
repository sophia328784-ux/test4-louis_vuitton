.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "showSecondaryPhoneNumber",
        "showThirdPhoneNumber",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v0, p5

    move/from16 v3, p11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x2866f30a

    move-object/from16 v6, p10

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v5, v3, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v3, 0xc00

    if-nez v6, :cond_7

    move/from16 v6, p3

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v5, v7

    goto :goto_5

    :cond_7
    move/from16 v6, p3

    :goto_5
    and-int/lit16 v7, v3, 0x6000

    if-nez v7, :cond_9

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_6

    :cond_8
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v5, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int/2addr v7, v3

    if-nez v7, :cond_b

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/high16 v7, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v7, 0x10000

    :goto_7
    or-int/2addr v5, v7

    :cond_b
    const/high16 v7, 0x180000

    and-int v10, v3, v7

    if-nez v10, :cond_d

    move-object/from16 v10, p6

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v11, 0x80000

    :goto_8
    or-int/2addr v5, v11

    goto :goto_9

    :cond_d
    move-object/from16 v10, p6

    :goto_9
    const/high16 v11, 0xc00000

    and-int/2addr v11, v3

    if-nez v11, :cond_f

    move-object/from16 v11, p7

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v12, 0x400000

    :goto_a
    or-int/2addr v5, v12

    goto :goto_b

    :cond_f
    move-object/from16 v11, p7

    :goto_b
    const/high16 v12, 0x6000000

    and-int/2addr v12, v3

    if-nez v12, :cond_11

    move-object/from16 v12, p8

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v14, 0x2000000

    :goto_c
    or-int/2addr v5, v14

    goto :goto_d

    :cond_11
    move-object/from16 v12, p8

    :goto_d
    const/high16 v14, 0x30000000

    and-int/2addr v14, v3

    if-nez v14, :cond_14

    if-nez p9, :cond_12

    const/4 v14, -0x1

    goto :goto_e

    :cond_12
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    :goto_e
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x20000000

    goto :goto_f

    :cond_13
    const/high16 v14, 0x10000000

    :goto_f
    or-int/2addr v5, v14

    :cond_14
    move/from16 v32, v5

    const v5, 0x12492493

    and-int v5, v32, v5

    const v14, 0x12492492

    const/4 v8, 0x0

    if-eq v5, v14, :cond_15

    const/4 v5, 0x1

    goto :goto_10

    :cond_15
    move v5, v8

    :goto_10
    and-int/lit8 v14, v32, 0x1

    invoke-virtual {v13, v14, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    move/from16 p10, v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v14, :cond_16

    if-ne v7, v11, :cond_17

    :cond_16
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->e()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v33, v7

    check-cast v33, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v7, :cond_18

    if-ne v14, v11, :cond_19

    :cond_18
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->f()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v34, v14

    check-cast v34, Landroidx/compose/runtime/MutableState;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "FormFieldPhone"

    invoke-direct {v7, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v17, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v15, v13, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    move-object v15, v9

    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v13, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v1, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v1, :cond_2a

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v1, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v15, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v4, :cond_1b

    const v0, 0x6ade3955

    invoke-static {v13, v0, v14}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v18

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v22, 0x0

    const/16 v23, 0xd

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v20, v0

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "addressBook_phoneNum_text"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x7f14108d

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    const/16 v30, 0x0

    const v31, 0x1fffc

    move-object v7, v11

    const-wide/16 v11, 0x0

    move-object v8, v13

    move-object v15, v14

    const-wide/16 v13, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    const/high16 v19, 0x20000

    const/16 v20, 0x1

    const-wide/16 v16, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move/from16 v24, v20

    move-object/from16 v23, v21

    const-wide/16 v20, 0x0

    move/from16 v25, v22

    const/16 v22, 0x0

    move-object/from16 v26, v23

    const/16 v23, 0x0

    move/from16 v27, v24

    const/16 v24, 0x0

    move/from16 v28, v25

    const/16 v25, 0x0

    move-object/from16 v29, v26

    const/16 v26, 0x0

    move-object/from16 v35, v29

    const/16 v29, 0x0

    move-object v10, v0

    move/from16 v0, v27

    move-object/from16 v27, v1

    move/from16 v1, v28

    move-object/from16 v28, v8

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_1b
    move-object v7, v11

    move-object v8, v13

    move-object/from16 v35, v14

    const/4 v0, 0x1

    const/high16 v1, 0x20000

    const/4 v9, 0x0

    const v10, 0x6ae36f2e

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "Collection contains no element matching the predicate."

    if-eqz v11, :cond_29

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v13, v14, :cond_28

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v14, v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v14, v15, :cond_26

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v14, v15, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g()Z

    move-result v5

    xor-int/2addr v5, v0

    if-eqz v2, :cond_1c

    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1c

    move v15, v0

    goto :goto_16

    :cond_1c
    move v15, v9

    :goto_16
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v7, :cond_1d

    new-instance v12, Ltx;

    const/16 v14, 0xf

    invoke-direct {v12, v14}, Ltx;-><init>(I)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v12, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v14, v32, 0xf

    const/high16 v16, 0x1c00000

    and-int v16, v14, v16

    or-int v16, v16, p10

    const/high16 v17, 0xe000000

    and-int v14, v14, v17

    or-int v14, v16, v14

    shl-int/lit8 v16, v32, 0x9

    const/high16 v17, 0x70000000

    and-int v16, v16, v17

    or-int v18, v14, v16

    shr-int/lit8 v14, v32, 0x18

    and-int/lit8 v14, v14, 0xe

    shr-int/lit8 v16, v32, 0x9

    and-int/lit8 v16, v16, 0x70

    or-int v14, v14, v16

    shr-int/lit8 v0, v32, 0x15

    and-int/lit16 v0, v0, 0x380

    or-int v19, v14, v0

    const/16 v20, 0x2020

    move-object/from16 v28, v8

    const/4 v8, 0x0

    const/16 v16, 0x0

    move/from16 v14, p4

    move-object v0, v7

    move-object v3, v11

    move-object v9, v12

    move v7, v15

    move-object/from16 v17, v28

    move-object/from16 v12, p6

    move-object/from16 v15, p9

    move v11, v6

    move v6, v5

    move-object v5, v10

    move v10, v4

    move-object v4, v13

    move-object/from16 v13, p8

    invoke-static/range {v3 .. v20}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v17

    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, v0

    new-instance v0, Lc00;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v8, p4

    move-object/from16 v6, p6

    move-object/from16 v3, p7

    move-object/from16 v9, p9

    move/from16 v22, v1

    move-object v14, v7

    move-object/from16 v10, v33

    move-object/from16 v11, v34

    const/16 v24, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v11}, Lc00;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZLkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object v2, v0

    move-object v0, v10

    move-object v1, v11

    const v3, 0x7c05cbfc

    invoke-static {v3, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v15, 0x1e

    sget-object v6, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v14

    const v14, 0x180006

    move/from16 v38, v12

    move-object v12, v2

    move-object v2, v7

    move/from16 v7, v38

    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v11, v6

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v10, v0

    new-instance v0, Ld00;

    move/from16 v8, p4

    move-object/from16 v6, p6

    move-object/from16 v3, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    move-object/from16 v37, v2

    move-object v15, v10

    move-object/from16 v36, v35

    move/from16 v2, p1

    move-object v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Ld00;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZLkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/MutableState;)V

    move-object v1, v10

    const v2, -0x595ff99b

    invoke-static {v2, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object v10, v15

    const/16 v15, 0x1e

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v10

    const/4 v10, 0x0

    move-object v6, v11

    const/4 v11, 0x0

    move-object v2, v7

    move v7, v12

    move-object v12, v0

    move-object/from16 v0, p5

    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual/range {p0 .. p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g()Z

    move-result v3

    if-nez v3, :cond_23

    const v3, 0x6b1bc81c

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v3

    iget-object v10, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v15, v36

    invoke-direct {v3, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v4, "addressBook_addAdditionalPhoneNumber_button"

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v3, 0x7f1402e0

    invoke-static {v13, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_1f

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_1e
    move/from16 v16, v6

    goto :goto_17

    :cond_1f
    const/16 v16, 0x0

    :goto_17
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x70000

    and-int v5, v32, v5

    const/high16 v7, 0x20000

    if-ne v5, v7, :cond_20

    move v15, v6

    goto :goto_18

    :cond_20
    const/4 v15, 0x0

    :goto_18
    or-int/2addr v4, v15

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_22

    move-object/from16 v14, v37

    if-ne v5, v14, :cond_21

    goto :goto_19

    :cond_21
    const/4 v4, 0x0

    goto :goto_1a

    :cond_22
    :goto_19
    new-instance v5, Le00;

    const/4 v4, 0x0

    invoke-direct {v5, v0, v2, v1, v4}, Le00;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x178

    move/from16 v24, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v8, v13

    move-object v13, v3

    move/from16 v3, v24

    invoke-static/range {v6 .. v17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object v13, v8

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_23
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v1, 0x6b27ed8e

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_1c

    :cond_24
    move v3, v0

    move-object v14, v7

    move-object/from16 v0, p5

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move v0, v3

    move/from16 v3, p11

    goto/16 :goto_15

    :cond_25
    invoke-static {v12}, Lzy0;->c(Ljava/lang/String;)V

    return-void

    :cond_26
    move v3, v0

    move-object v14, v7

    move-object/from16 v0, p5

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move v0, v3

    move/from16 v3, p11

    goto/16 :goto_14

    :cond_27
    invoke-static {v12}, Lzy0;->c(Ljava/lang/String;)V

    return-void

    :cond_28
    move v3, v0

    move-object v14, v7

    move-object/from16 v0, p5

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move v0, v3

    move/from16 v3, p11

    goto/16 :goto_13

    :cond_29
    invoke-static {v12}, Lzy0;->c(Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_2b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2c

    new-instance v0, Lf00;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lf00;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v0, p9

    move/from16 v3, p11

    move/from16 v2, p15

    move/from16 v4, p16

    const v5, -0x1c521130

    move-object/from16 v6, p14

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    iget-object v6, v5, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v7, v2, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v2

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    and-int/lit8 v16, v2, 0x30

    const/16 v17, 0x20

    if-nez v16, :cond_3

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move/from16 v16, v17

    goto :goto_2

    :cond_2
    const/16 v16, 0x10

    :goto_2
    or-int v7, v7, v16

    :cond_3
    and-int/lit16 v9, v2, 0x180

    const/16 v18, 0x80

    const/16 v19, 0x100

    if-nez v9, :cond_5

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move/from16 v9, v19

    goto :goto_3

    :cond_4
    move/from16 v9, v18

    :goto_3
    or-int/2addr v7, v9

    :cond_5
    and-int/lit16 v9, v2, 0xc00

    if-nez v9, :cond_7

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_4

    :cond_6
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v7, v9

    :cond_7
    and-int/lit16 v9, v2, 0x6000

    if-nez v9, :cond_9

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v7, v9

    :cond_9
    and-int/lit8 v9, p17, 0x20

    const/high16 v20, 0x30000

    if-eqz v9, :cond_a

    or-int v7, v7, v20

    move-object/from16 v8, p5

    goto :goto_7

    :cond_a
    and-int v20, v2, v20

    move-object/from16 v8, p5

    if-nez v20, :cond_c

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/high16 v21, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v21, 0x10000

    :goto_6
    or-int v7, v7, v21

    :cond_c
    :goto_7
    const/high16 v21, 0x180000

    and-int v21, v2, v21

    if-nez v21, :cond_e

    move/from16 v21, v9

    move-object/from16 v9, p6

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v22, 0x80000

    :goto_8
    or-int v7, v7, v22

    goto :goto_9

    :cond_e
    move/from16 v21, v9

    move-object/from16 v9, p6

    :goto_9
    const/high16 v22, 0xc00000

    and-int v22, v2, v22

    if-nez v22, :cond_10

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v22, 0x400000

    :goto_a
    or-int v7, v7, v22

    :cond_10
    const/high16 v22, 0x6000000

    and-int v22, v2, v22

    if-nez v22, :cond_12

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v22, 0x2000000

    :goto_b
    or-int v7, v7, v22

    :cond_12
    const/high16 v22, 0x30000000

    and-int v22, v2, v22

    if-nez v22, :cond_14

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x10000000

    :goto_c
    or-int v7, v7, v22

    :cond_14
    move/from16 v22, v7

    and-int/lit8 v7, v4, 0x6

    if-nez v7, :cond_16

    move-object/from16 v7, p10

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x4

    goto :goto_d

    :cond_15
    const/16 v23, 0x2

    :goto_d
    or-int v23, v4, v23

    goto :goto_e

    :cond_16
    move-object/from16 v7, p10

    move/from16 v23, v4

    :goto_e
    and-int/lit8 v24, v4, 0x30

    if-nez v24, :cond_18

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v24

    if-eqz v24, :cond_17

    goto :goto_f

    :cond_17
    const/16 v17, 0x10

    :goto_f
    or-int v23, v23, v17

    :cond_18
    and-int/lit16 v9, v4, 0x180

    if-nez v9, :cond_1b

    if-nez p12, :cond_19

    const/4 v9, -0x1

    goto :goto_10

    :cond_19
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_10
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    move/from16 v18, v19

    :cond_1a
    or-int v23, v23, v18

    :cond_1b
    move/from16 v9, v23

    or-int/lit16 v9, v9, 0xc00

    const v17, 0x12492493

    and-int v2, v22, v17

    const v3, 0x12492492

    const/4 v12, 0x0

    if-ne v2, v3, :cond_1d

    and-int/lit16 v2, v9, 0x493

    const/16 v3, 0x492

    if-eq v2, v3, :cond_1c

    goto :goto_11

    :cond_1c
    move v2, v12

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v2, 0x1

    :goto_12
    and-int/lit8 v3, v22, 0x1

    invoke-virtual {v5, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v21, :cond_1f

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1e

    new-instance v3, Ltx;

    const/16 v8, 0x10

    invoke-direct {v3, v8}, Ltx;-><init>(I)V

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object/from16 v21, v3

    goto :goto_13

    :cond_1f
    move-object/from16 v21, v8

    :goto_13
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_20

    new-instance v3, Ldy;

    const/16 v8, 0xd

    invoke-direct {v3, v8}, Ldy;-><init>(I)V

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v3, "PhoneBlock"

    if-nez v14, :cond_21

    const v8, 0x4dcc2614    # 4.28130944E8f

    invoke-static {v5, v8, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v25

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v29, 0x0

    const/16 v30, 0xd

    const/16 v26, 0x0

    const/16 v28, 0x0

    move/from16 v27, v8

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_21
    const v8, 0x4dcda30a

    invoke-static {v5, v8, v12, v3}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v8

    :goto_14
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v18, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-static {v12, v4, v5, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v6, v5, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v5, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x0

    if-eqz v18, :cond_34

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 p5, v6

    iget-boolean v6, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_22

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_22
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_15
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v20, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 p5, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v23, 0x380000

    const/high16 v24, 0x70000000

    if-nez v15, :cond_26

    const v8, 0x285f7717

    move-object/from16 p13, v4

    const-string v4, "addressBook_phoneType_textField"

    invoke-static {v5, v8, v3, v4}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    move-object/from16 v26, v3

    and-int v3, v22, v24

    move-object/from16 v27, v4

    const/high16 v4, 0x20000000

    if-ne v3, v4, :cond_23

    const/4 v3, 0x1

    goto :goto_16

    :cond_23
    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    or-int v3, v3, v28

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_24

    if-ne v4, v2, :cond_25

    :cond_24
    new-instance v4, La00;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v1, v3}, La00;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;I)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v4, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v3, v22, 0x3

    and-int/lit8 v3, v3, 0x70

    shl-int/lit8 v0, v20, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v3

    shl-int/lit8 v3, v20, 0xc

    and-int v3, v3, v23

    or-int/2addr v0, v3

    move-object v3, v9

    const/16 v9, 0x20

    move-object/from16 v28, v7

    move-object v7, v5

    const/4 v5, 0x0

    move-object/from16 v11, p5

    move-object/from16 v15, p13

    move-object/from16 v32, v2

    move-object/from16 v16, v3

    move-object v14, v6

    move-object v2, v8

    move-object/from16 v10, v26

    move-object/from16 v13, v28

    move/from16 v3, p11

    move-object/from16 v6, p12

    move v8, v0

    move-object/from16 v0, v27

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/EnumBasedFormFieldKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_26
    move-object/from16 v11, p5

    move-object/from16 v32, v2

    move-object v10, v3

    move-object v15, v4

    move-object v14, v6

    move-object v13, v7

    move-object/from16 v16, v9

    const/4 v3, 0x0

    move-object v7, v5

    const v0, 0x2866425c

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    if-nez p8, :cond_27

    const v0, 0x2867bed6

    invoke-static {v7, v0, v10}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_18

    :cond_27
    const/4 v3, 0x0

    const v0, 0x28695acc

    invoke-static {v7, v0, v3, v10}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    :goto_18
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v1, v2, v7, v3}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget-wide v2, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v18, :cond_33

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_28

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_28
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    invoke-static {v7, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v7, v11, v7, v13}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, v16

    invoke-static {v7, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v1, 0x42e00000    # 112.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "addressBook_countryCode_textField"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    and-int v8, v22, v24

    const/high16 v9, 0x20000000

    if-ne v8, v9, :cond_29

    const/4 v0, 0x1

    :goto_1a
    move-object/from16 v1, p1

    goto :goto_1b

    :cond_29
    const/4 v0, 0x0

    goto :goto_1a

    :goto_1b
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v11, v32

    if-nez v0, :cond_2b

    if-ne v3, v11, :cond_2a

    goto :goto_1c

    :cond_2a
    move-object/from16 v12, p9

    goto :goto_1d

    :cond_2b
    :goto_1c
    new-instance v3, La00;

    move-object/from16 v12, p9

    const/4 v0, 0x1

    invoke-direct {v3, v12, v1, v0}, La00;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v13, v22, 0x3

    and-int/lit8 v0, v13, 0xe

    shl-int/lit8 v4, v20, 0x6

    and-int/lit16 v14, v4, 0x1c00

    or-int/2addr v0, v14

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int v6, v0, v4

    move-object/from16 v4, p12

    move-object v0, v1

    move-object v1, v3

    move-object v5, v7

    move/from16 v3, p11

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v2, 0x1

    invoke-static {v10, v1, v0, v2}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v26

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v30, 0x0

    const/16 v31, 0xe

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v0

    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "addressBook_phoneNum_textField"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_2c

    new-instance v1, Ldy;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ldy;-><init>(I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    sget-object v3, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p4, :cond_2d

    sget v3, Landroidx/compose/ui/text/input/ImeAction;->i:I

    :goto_1e
    move/from16 v37, v3

    goto :goto_1f

    :cond_2d
    sget v3, Landroidx/compose/ui/text/input/ImeAction;->j:I

    goto :goto_1e

    :goto_1f
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    iget v3, v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->c:I

    new-instance v33, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v41, 0x73

    const/16 v42, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v36, v3

    invoke-direct/range {v33 .. v42}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ne v8, v9, :cond_2e

    const/4 v3, 0x1

    goto :goto_20

    :cond_2e
    const/4 v3, 0x0

    :goto_20
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2f

    if-ne v4, v11, :cond_30

    :cond_2f
    new-instance v4, La00;

    const/4 v3, 0x2

    invoke-direct {v4, v12, v1, v3}, La00;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v3, v13, 0x70

    or-int/2addr v3, v14

    shl-int/lit8 v4, v20, 0x9

    and-int v4, v4, v23

    or-int/2addr v3, v4

    shl-int/lit8 v4, v20, 0x15

    const/high16 v6, 0x1c00000

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    shl-int/lit8 v4, v20, 0x12

    const/high16 v6, 0xe000000

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    const/4 v11, 0x0

    move-object/from16 v8, p12

    move-object v9, v7

    move-object v13, v10

    move-object/from16 v6, v17

    move-object/from16 v4, v33

    move-object/from16 v7, p10

    move v10, v3

    move/from16 v3, p11

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldFreeformKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;ZLandroidx/compose/foundation/text/KeyboardOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v9

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p3, :cond_32

    const v0, 0x2880bdea

    const-string v1, "addressBook_phoneNumberDelete_button"

    invoke-static {v7, v0, v13, v1}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const v0, 0x7f141083

    invoke-static {v7, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    if-eqz p11, :cond_31

    invoke-interface/range {p6 .. p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v18, 0x1

    goto :goto_21

    :cond_31
    const/16 v18, 0x0

    :goto_21
    const/high16 v0, 0x70000

    and-int v23, v22, v0

    const/16 v24, 0x18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v7

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_22
    const/4 v0, 0x1

    goto :goto_23

    :cond_32
    const/4 v3, 0x0

    const v0, 0x2885b2bc

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_22

    :goto_23
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v14, v6

    move-object/from16 v6, v21

    goto :goto_24

    :cond_33
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_34
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_35
    move-object v12, v0

    move-object v7, v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v14, p13

    move-object v6, v8

    :goto_24
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_36

    move-object v1, v0

    new-instance v0, Lb00;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v43, v1

    move-object v10, v12

    move-object/from16 v1, p0

    move/from16 v12, p11

    invoke-direct/range {v0 .. v17}, Lb00;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v1, v43

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    move/from16 v10, p6

    if-eqz p2, :cond_0

    const-string v2, "PhoneNumberCountry"

    invoke-static {p2, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const v2, 0x421a003

    move-object/from16 v3, p5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    or-int/2addr v2, v10

    goto :goto_2

    :cond_2
    move v2, v10

    :goto_2
    and-int/lit8 v3, v10, 0x30

    if-nez v3, :cond_4

    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_3

    :cond_3
    const/16 v3, 0x10

    :goto_3
    or-int/2addr v2, v3

    :cond_4
    and-int/lit16 v3, v10, 0x180

    if-nez v3, :cond_6

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_4

    :cond_5
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v2, v3

    :cond_6
    and-int/lit16 v3, v10, 0xc00

    if-nez v3, :cond_8

    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_5

    :cond_7
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v2, v5

    :cond_8
    and-int/lit16 v5, v10, 0x6000

    if-nez v5, :cond_b

    if-nez p4, :cond_9

    const/4 v5, -0x1

    goto :goto_6

    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_6
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x4000

    goto :goto_7

    :cond_a
    const/16 v5, 0x2000

    :goto_7
    or-int/2addr v2, v5

    :cond_b
    and-int/lit16 v5, v2, 0x2493

    const/16 v6, 0x2492

    const/4 v11, 0x0

    if-eq v5, v6, :cond_c

    const/4 v5, 0x1

    goto :goto_8

    :cond_c
    move v5, v11

    :goto_8
    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v7, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    instance-of v5, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    if-eqz v5, :cond_d

    const v5, -0x3afebd79

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0xe

    shl-int/lit8 v8, v2, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v6, v8

    and-int/lit16 v8, v2, 0x1c00

    or-int/2addr v6, v8

    shl-int/lit8 v8, v2, 0x9

    const v9, 0xe000

    and-int/2addr v8, v9

    or-int/2addr v6, v8

    const/high16 v8, 0x380000

    shl-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v8

    or-int v8, v6, v2

    const/16 v9, 0x20

    move-object v2, v5

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v3, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/EnumBasedFormFieldKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_d
    const v1, -0x3af9e443

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    move-object v3, v0

    new-instance v0, Lj8;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object/from16 v5, p4

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lj8;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
