.class public abstract Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v13, p13

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x5d6b33ac

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v7, v13, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v13

    goto :goto_1

    :cond_1
    move v7, v13

    :goto_1
    and-int/lit8 v14, v13, 0x30

    const/16 v16, 0x20

    if-nez v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v14

    if-eqz v14, :cond_2

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/16 v14, 0x10

    :goto_2
    or-int/2addr v7, v14

    :cond_3
    and-int/lit16 v14, v13, 0x180

    if-nez v14, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x100

    goto :goto_3

    :cond_4
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v7, v14

    :cond_5
    and-int/lit16 v14, v13, 0xc00

    if-nez v14, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x800

    goto :goto_4

    :cond_6
    const/16 v14, 0x400

    :goto_4
    or-int/2addr v7, v14

    :cond_7
    and-int/lit16 v14, v13, 0x6000

    if-nez v14, :cond_9

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x4000

    goto :goto_5

    :cond_8
    const/16 v14, 0x2000

    :goto_5
    or-int/2addr v7, v14

    :cond_9
    const/high16 v14, 0x30000

    and-int/2addr v14, v13

    if-nez v14, :cond_b

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v14, 0x10000

    :goto_6
    or-int/2addr v7, v14

    :cond_b
    const/high16 v14, 0x180000

    and-int/2addr v14, v13

    if-nez v14, :cond_d

    move/from16 v14, p6

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_c

    const/high16 v17, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v17, 0x80000

    :goto_7
    or-int v7, v7, v17

    goto :goto_8

    :cond_d
    move/from16 v14, p6

    :goto_8
    const/high16 v17, 0xc00000

    and-int v17, v13, v17

    if-nez v17, :cond_f

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v17, 0x400000

    :goto_9
    or-int v7, v7, v17

    :cond_f
    const/high16 v17, 0x6000000

    and-int v17, v13, v17

    if-nez v17, :cond_11

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x2000000

    :goto_a
    or-int v7, v7, v17

    :cond_11
    const/high16 v17, 0x30000000

    and-int v17, v13, v17

    if-nez v17, :cond_13

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v17, 0x10000000

    :goto_b
    or-int v7, v7, v17

    :cond_13
    move-object/from16 v15, p10

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v18, 0x4

    :goto_c
    move-object/from16 v15, p11

    goto :goto_d

    :cond_14
    const/16 v18, 0x2

    goto :goto_c

    :goto_d
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    goto :goto_e

    :cond_15
    const/16 v16, 0x10

    :goto_e
    or-int v26, v18, v16

    const v16, 0x12492493

    and-int v11, v7, v16

    const v12, 0x12492492

    if-ne v11, v12, :cond_17

    and-int/lit8 v11, v26, 0x13

    const/16 v12, 0x12

    if-eq v11, v12, :cond_16

    goto :goto_f

    :cond_16
    const/4 v11, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v11, 0x1

    :goto_10
    and-int/lit8 v12, v7, 0x1

    invoke-virtual {v0, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_76

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v11, "PrivacyScreen"

    invoke-static {v11, v1}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v19, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v23, v2

    const/4 v2, 0x0

    invoke-static {v15, v1, v0, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    move/from16 v19, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v0, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v24, 0x0

    if-eqz v23, :cond_75

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_18

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_11
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v25, v7

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v12, v13, v11}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v12, v14}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    invoke-virtual {v14, v12, v8, v9}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v8, 0x0

    invoke-static {v9, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    move-object/from16 v19, v14

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-eqz v23, :cond_74

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_19

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_12
    invoke-static {v0, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v0, v7, v0, v2}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->c:Landroidx/compose/ui/BiasAlignment;

    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v10, v8, v9}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v0}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    const/16 v12, 0xe

    const/4 v14, 0x0

    invoke-static {v8, v9, v14, v12}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v15, v1, v0, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v23, :cond_73

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_1a

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_13
    invoke-static {v0, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v0, v7, v0, v2}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v9, 0x1

    if-eq v1, v9, :cond_1e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    if-eq v1, v2, :cond_1c

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1b

    const v1, -0x65b183a3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1b
    const/4 v8, 0x0

    const v1, 0x6812d76c

    invoke-static {v0, v1, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v8, 0x0

    const v1, -0x65b32a03

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/screen/privacy/components/headers/CcpaPrivacyHeaderKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1d
    const/4 v8, 0x0

    const v1, -0x65b4d063

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/screen/privacy/components/headers/GdprPrivacyHeaderKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1e
    const/4 v8, 0x0

    const v1, -0x65b72eb4

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v1, v25, 0xc

    and-int/2addr v1, v12

    invoke-static {v5, v0, v1}, Lcom/vuitton/android/presentation/screen/privacy/components/headers/PiplPrivacyHeaderKt;->a(ZLandroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v3, v25, 0x15

    and-int/lit8 v4, v3, 0x70

    or-int/lit8 v4, v4, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v4

    move-object/from16 v4, p8

    move-object/from16 v6, p9

    invoke-static {v1, v4, v6, v0, v3}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyCtasKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v7, 0x0

    const/4 v12, 0x2

    invoke-static {v1, v3, v7, v12}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    move-object/from16 v1, v19

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/4 v15, 0x0

    move-object/from16 v18, v0

    move-wide/from16 v16, v12

    const/high16 v0, 0x800000

    invoke-static/range {v14 .. v20}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v3, v18

    const v7, 0x681376f8

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v15, v8

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v27, v15, 0x1

    if-ltz v15, :cond_6e

    check-cast v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    instance-of v14, v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    const/high16 v16, 0x1c00000

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const-string v17, ""

    if-eqz v14, :cond_2b

    const v14, 0x111ef124

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v14, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v0, v14, v18

    if-eq v0, v9, :cond_22

    const/4 v9, 0x2

    if-eq v0, v9, :cond_21

    if-eq v0, v2, :cond_20

    const/4 v9, 0x4

    if-ne v0, v9, :cond_1f

    const v0, 0x11259d4a

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v0, v17

    goto :goto_16

    :cond_1f
    const v0, 0x8d650e

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_20
    const v0, 0x8d8b40

    const v9, 0x7f140a47

    invoke-static {v3, v0, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_21
    const v9, 0x7f140a47

    const v0, 0x8d7ce0

    invoke-static {v3, v0, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_22
    const v0, 0x8d6cce

    const v9, 0x7f1405df

    invoke-static {v3, v0, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v14, v9

    const/4 v14, 0x1

    if-eq v9, v14, :cond_26

    const/4 v14, 0x2

    if-eq v9, v14, :cond_25

    if-eq v9, v2, :cond_24

    const/4 v14, 0x4

    if-ne v9, v14, :cond_23

    const v9, 0x112ec98a

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_23
    const v0, 0x8dafb7

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_24
    const v9, 0x8dd665

    const v14, 0x7f140a48

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_17

    :cond_25
    const v14, 0x7f140a48

    const v9, 0x8dc765

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_17

    :cond_26
    const v9, 0x8db76d

    const v14, 0x7f1405de

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    :goto_17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    const/16 v29, 0x1

    add-int/lit8 v9, v9, -0x1

    if-eq v15, v9, :cond_27

    const/16 v18, 0x1

    goto :goto_18

    :cond_27
    move/from16 v18, v8

    :goto_18
    move-object v9, v12

    check-cast v9, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    iget-object v14, v9, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;->b:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    and-int v15, v25, v16

    const/high16 v2, 0x800000

    if-ne v15, v2, :cond_28

    const/4 v15, 0x1

    goto :goto_19

    :cond_28
    move v15, v8

    :goto_19
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v15

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_2a

    if-ne v12, v13, :cond_29

    goto :goto_1a

    :cond_29
    move-object/from16 v13, p7

    goto :goto_1b

    :cond_2a
    :goto_1a
    new-instance v12, Lxg0;

    const/16 v2, 0x1a

    move-object/from16 v13, p7

    invoke-direct {v12, v13, v9, v2}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1b
    move-object/from16 v19, v12

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    move-object/from16 v16, v17

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object v15, v0

    move-object/from16 v20, v3

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/privacy/components/ConsentSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v2, v3

    move-object v0, v13

    :goto_1c
    const/4 v3, 0x4

    const/16 v22, 0x2

    const/high16 v28, 0x800000

    goto/16 :goto_38

    :cond_2b
    move-object/from16 v0, p7

    instance-of v2, v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v2, :cond_38

    const v2, 0x1139e8f0

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v2, v9

    const/4 v14, 0x1

    if-eq v9, v14, :cond_2f

    const/4 v14, 0x2

    if-eq v9, v14, :cond_2e

    const/4 v14, 0x3

    if-eq v9, v14, :cond_2d

    const/4 v14, 0x4

    if-ne v9, v14, :cond_2c

    const v9, 0x114104f8

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v9, v17

    goto :goto_1d

    :cond_2c
    const v0, 0x8e479c

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2d
    const v9, 0x8e6dff

    const v14, 0x7f140a3c

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_1d

    :cond_2e
    const v14, 0x7f140a3c

    const v9, 0x8e5fbf

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_1d

    :cond_2f
    const v9, 0x8e4fae

    const v14, 0x7f1405e1

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v2, v2, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_33

    const/4 v14, 0x2

    if-eq v2, v14, :cond_32

    const/4 v14, 0x3

    if-eq v2, v14, :cond_31

    const/4 v14, 0x4

    if-ne v2, v14, :cond_30

    const v2, 0x1148f378

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_30
    const v0, 0x8e8805

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_31
    const v2, 0x8eaee4

    const v14, 0x7f140a3d

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_1e

    :cond_32
    const v14, 0x7f140a3d

    const v2, 0x8ea004

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_1e

    :cond_33
    const v2, 0x8e900d

    const v14, 0x7f1405e0

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    :goto_1e
    move-object v2, v12

    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;->b:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    const/16 v29, 0x1

    add-int/lit8 v8, v18, -0x1

    if-eq v15, v8, :cond_34

    const/16 v18, 0x1

    goto :goto_1f

    :cond_34
    const/16 v18, 0x0

    :goto_1f
    and-int v8, v25, v16

    const/high16 v15, 0x800000

    if-ne v8, v15, :cond_35

    const/4 v15, 0x1

    goto :goto_20

    :cond_35
    const/4 v15, 0x0

    :goto_20
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v15

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_36

    if-ne v12, v13, :cond_37

    :cond_36
    new-instance v12, Lxg0;

    const/16 v8, 0x1b

    invoke-direct {v12, v0, v2, v8}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_37
    move-object/from16 v19, v12

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    move-object/from16 v16, v17

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v20, v3

    move-object v15, v9

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/privacy/components/ConsentSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    move-object v2, v3

    goto/16 :goto_1c

    :cond_38
    instance-of v2, v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v2, :cond_45

    const v2, 0x1152f800    # 1.66425E-28f

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v2, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3c

    const v9, 0x7f140a45

    const/4 v14, 0x2

    if-eq v8, v14, :cond_3b

    const/4 v14, 0x3

    if-eq v8, v14, :cond_3a

    const/4 v14, 0x4

    if-ne v8, v14, :cond_39

    const v8, 0x115a3118

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v9, v17

    goto :goto_22

    :cond_39
    const/4 v8, 0x0

    const v0, 0x8f1684

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v8, 0x0

    const v14, 0x8f3d63

    invoke-static {v3, v14, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_22

    :cond_3b
    const/4 v8, 0x0

    const v14, 0x8f2ea3

    invoke-static {v3, v14, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_22

    :cond_3c
    const/4 v8, 0x0

    const v9, 0x8f1e8e

    const v14, 0x7f1405e3

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    :goto_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v2, v2, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_40

    const/4 v14, 0x2

    if-eq v2, v14, :cond_3f

    const/4 v14, 0x3

    if-eq v2, v14, :cond_3e

    const/4 v14, 0x4

    if-ne v2, v14, :cond_3d

    const v2, 0x11623e98

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :cond_3d
    const v0, 0x8f57ed

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_3e
    const v2, 0x8f7f48

    const v14, 0x7f140a46

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_23

    :cond_3f
    const v14, 0x7f140a46

    const v2, 0x8f6fe8

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_23

    :cond_40
    const v2, 0x8f5fed

    const v14, 0x7f1405e2

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    :goto_23
    move-object v2, v12

    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;->b:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/16 v29, 0x1

    add-int/lit8 v14, v14, -0x1

    if-eq v15, v14, :cond_41

    const/16 v18, 0x1

    goto :goto_24

    :cond_41
    const/16 v18, 0x0

    :goto_24
    and-int v14, v25, v16

    const/high16 v15, 0x800000

    if-ne v14, v15, :cond_42

    const/4 v15, 0x1

    goto :goto_25

    :cond_42
    const/4 v15, 0x0

    :goto_25
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v12, v15

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_43

    if-ne v14, v13, :cond_44

    :cond_43
    new-instance v14, Lxg0;

    const/16 v12, 0x1c

    invoke-direct {v14, v0, v2, v12}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_44
    move-object/from16 v19, v14

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    const/4 v14, 0x0

    move-object/from16 v20, v3

    move-object v15, v9

    move-object/from16 v16, v17

    move-object/from16 v17, v8

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/privacy/components/ConsentSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_21

    :cond_45
    instance-of v2, v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v2, :cond_52

    const v2, 0x116c18dd

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v2, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_49

    const v9, 0x7f140a53

    const/4 v14, 0x2

    if-eq v8, v14, :cond_48

    const/4 v14, 0x3

    if-eq v8, v14, :cond_47

    const/4 v14, 0x4

    if-ne v8, v14, :cond_46

    const v8, 0x11726cf8

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_26
    move-object/from16 v9, v17

    goto :goto_27

    :cond_46
    const/4 v8, 0x0

    const v0, 0x8fe645

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_47
    const/4 v8, 0x0

    const v14, 0x90065c

    invoke-static {v3, v14, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_27

    :cond_48
    const/4 v8, 0x0

    const v14, 0x8ff87c

    invoke-static {v3, v14, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_27

    :cond_49
    const/4 v8, 0x0

    const v9, 0x116ddab8

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_26

    :goto_27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v2, v2, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_4d

    const/4 v14, 0x2

    if-eq v2, v14, :cond_4c

    const/4 v14, 0x3

    if-eq v2, v14, :cond_4b

    const/4 v14, 0x4

    if-ne v2, v14, :cond_4a

    const v2, 0x11798a38

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_28

    :cond_4a
    const v0, 0x901fcf

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_4b
    const v2, 0x904081

    const v14, 0x7f140a54

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_28

    :cond_4c
    const v14, 0x7f140a54

    const v2, 0x903201

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_28

    :cond_4d
    const v2, 0x1174d138

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_28
    move-object v2, v12

    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;->b:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/16 v29, 0x1

    add-int/lit8 v14, v14, -0x1

    if-eq v15, v14, :cond_4e

    const/16 v18, 0x1

    goto :goto_29

    :cond_4e
    const/16 v18, 0x0

    :goto_29
    and-int v14, v25, v16

    const/high16 v15, 0x800000

    if-ne v14, v15, :cond_4f

    const/4 v15, 0x1

    goto :goto_2a

    :cond_4f
    const/4 v15, 0x0

    :goto_2a
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v12, v15

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_50

    if-ne v14, v13, :cond_51

    :cond_50
    new-instance v14, Lxg0;

    const/16 v12, 0x1d

    invoke-direct {v14, v0, v2, v12}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_51
    move-object/from16 v19, v14

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    const/4 v14, 0x0

    move-object/from16 v20, v3

    move-object v15, v9

    move-object/from16 v16, v17

    move-object/from16 v17, v8

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/privacy/components/ConsentSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_21

    :cond_52
    instance-of v2, v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    if-eqz v2, :cond_60

    const v2, 0x1183703c

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p3, :cond_5f

    const v2, 0x11843b8d

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v2, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_56

    const v9, 0x7f140a3e

    const/4 v14, 0x2

    if-eq v8, v14, :cond_55

    const/4 v14, 0x3

    if-eq v8, v14, :cond_54

    const/4 v14, 0x4

    if-ne v8, v14, :cond_53

    const v8, 0x118acbb8

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2b
    move-object/from16 v9, v17

    goto :goto_2c

    :cond_53
    const/4 v8, 0x0

    const v0, 0x90ae53

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_54
    const/4 v8, 0x0

    const v14, 0x90cf5a

    invoke-static {v3, v14, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_2c

    :cond_55
    const/4 v8, 0x0

    const v14, 0x90c13a

    invoke-static {v3, v14, v9, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_2c

    :cond_56
    const/4 v8, 0x0

    const v9, 0x11862238

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2b

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v2, v2, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_5a

    const/4 v14, 0x2

    if-eq v2, v14, :cond_59

    const/4 v14, 0x3

    if-eq v2, v14, :cond_58

    const/4 v14, 0x4

    if-ne v2, v14, :cond_57

    const v2, 0x11922eb8

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2d

    :cond_57
    const v0, 0x90ea1d

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_58
    const v2, 0x910bbf

    const v14, 0x7f140a3f

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_2d

    :cond_59
    const v14, 0x7f140a3f

    const v2, 0x90fcff

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    goto :goto_2d

    :cond_5a
    const v2, 0x118d5e78

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2d
    move-object v2, v12

    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;->b:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/16 v29, 0x1

    add-int/lit8 v14, v14, -0x1

    if-eq v15, v14, :cond_5b

    const/16 v18, 0x1

    goto :goto_2e

    :cond_5b
    const/16 v18, 0x0

    :goto_2e
    and-int v14, v25, v16

    const/high16 v15, 0x800000

    if-ne v14, v15, :cond_5c

    const/4 v15, 0x1

    goto :goto_2f

    :cond_5c
    const/4 v15, 0x0

    :goto_2f
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v12, v15

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_5e

    if-ne v14, v13, :cond_5d

    goto :goto_30

    :cond_5d
    const/4 v12, 0x0

    goto :goto_31

    :cond_5e
    :goto_30
    new-instance v14, Lrp0;

    const/4 v12, 0x0

    invoke-direct {v14, v0, v2, v12}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_31
    move-object/from16 v19, v14

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    const/4 v14, 0x0

    move-object/from16 v20, v3

    move-object v15, v9

    move-object/from16 v16, v17

    move-object/from16 v17, v8

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/privacy/components/ConsentSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_32

    :cond_5f
    const/4 v12, 0x0

    const v2, 0x119af9dc

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_32
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v2, v3

    move v8, v12

    goto/16 :goto_1c

    :cond_60
    instance-of v2, v12, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    if-eqz v2, :cond_6d

    const v2, 0x119d2152

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v2, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_64

    const/4 v14, 0x2

    if-eq v8, v14, :cond_63

    const/4 v14, 0x3

    if-eq v8, v14, :cond_62

    const/4 v14, 0x4

    if-ne v8, v14, :cond_61

    const v8, 0x11a36498

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_33
    move-object/from16 v9, v17

    goto :goto_34

    :cond_61
    const/4 v8, 0x0

    const v0, 0x917b40

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_62
    const/4 v8, 0x0

    const v9, 0x11a21f18

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_33

    :cond_63
    const/4 v8, 0x0

    const v9, 0x11a0d998

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_33

    :cond_64
    const/4 v8, 0x0

    const v9, 0x91838e

    const v14, 0x7f1405e5

    invoke-static {v3, v9, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    :goto_34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v2, v2, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_68

    const/4 v14, 0x2

    if-eq v2, v14, :cond_67

    const/4 v14, 0x3

    if-eq v2, v14, :cond_66

    const/4 v14, 0x4

    if-ne v2, v14, :cond_65

    const v2, 0x11aa43d8

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_35

    :cond_65
    const v0, 0x91b41f

    invoke-static {v3, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_66
    const/4 v14, 0x4

    const v2, 0x11a8fe58

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_35

    :cond_67
    const/4 v14, 0x4

    const v2, 0x11a7b8d8

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_35

    :cond_68
    const/4 v14, 0x4

    const v2, 0x91bc6d

    const v14, 0x7f1405e4

    invoke-static {v3, v2, v14, v3, v8}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v17

    :goto_35
    move-object v2, v12

    check-cast v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;->b:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/16 v29, 0x1

    add-int/lit8 v14, v14, -0x1

    if-eq v15, v14, :cond_69

    const/16 v18, 0x1

    goto :goto_36

    :cond_69
    const/16 v18, 0x0

    :goto_36
    and-int v14, v25, v16

    const/high16 v15, 0x800000

    if-ne v14, v15, :cond_6a

    const/4 v14, 0x1

    goto :goto_37

    :cond_6a
    const/4 v14, 0x0

    :goto_37
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v12, v14

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v12, :cond_6b

    if-ne v14, v13, :cond_6c

    :cond_6b
    new-instance v14, Lrp0;

    const/4 v12, 0x1

    invoke-direct {v14, v0, v2, v12}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6c
    move-object/from16 v19, v14

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x0

    const/4 v14, 0x0

    move-object/from16 v20, v3

    move/from16 v28, v15

    move-object/from16 v16, v17

    const/4 v3, 0x4

    const/16 v22, 0x2

    move-object/from16 v17, v8

    move-object v15, v9

    invoke-static/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/privacy/components/ConsentSwitchKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v2, v20

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_38
    move-object v3, v2

    move/from16 v15, v27

    move/from16 v0, v28

    const/4 v2, 0x3

    const/4 v9, 0x1

    goto/16 :goto_15

    :cond_6d
    move-object v2, v3

    const/4 v8, 0x0

    const v0, 0x8d7433

    invoke-static {v2, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_6e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v24

    :cond_6f
    move-object/from16 v0, p7

    move-object v2, v3

    const/high16 v16, 0x1c00000

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v10, v3, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v2, v8}, Lcom/vuitton/android/presentation/compose/components/LVTopShadowKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v12, 0x0

    invoke-static {v7, v8, v2, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v23, :cond_72

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_70

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_39

    :cond_70
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_39
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    if-eqz p5, :cond_71

    const v7, 0x7f140a3b

    goto :goto_3a

    :cond_71
    const v7, 0x7f14110d

    :goto_3a
    invoke-static {v2, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v21

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v11, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const-string v8, "cbdtSettings_accept_button"

    invoke-static {v7, v8}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const/16 v30, 0x3

    shl-int/lit8 v7, v25, 0x3

    and-int v7, v7, v16

    shl-int/lit8 v8, v26, 0x18

    const/high16 v9, 0x70000000

    and-int/2addr v8, v9

    or-int v14, v7, v8

    const/16 v15, 0x178

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v24, p6

    move-object/from16 v22, p11

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-static/range {v14 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object/from16 v3, v16

    const v2, 0x7f140a4f

    invoke-static {v3, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v11, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v8, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v10, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/4 v12, 0x2

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v1, v2, v7}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "cbdtSettings_privacyPolicy_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    shl-int/lit8 v1, v26, 0xf

    const/high16 v2, 0x70000

    and-int v21, v1, v2

    const/16 v22, 0x1c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, p10

    move-object/from16 v20, v3

    invoke-static/range {v14 .. v22}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3b

    :cond_72
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v24

    :cond_73
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v24

    :cond_74
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v24

    :cond_75
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v24

    :cond_76
    move-object v3, v0

    move-object v0, v8

    move-object v4, v9

    move-object v6, v10

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_77

    new-instance v0, Lsp0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object v9, v4

    move-object v10, v6

    move/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v13}, Lsp0;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_77
    return-void
.end method
